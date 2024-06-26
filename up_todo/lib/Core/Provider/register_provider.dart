import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:up_todo/Domain/Repository/impl_auth_repository.dart';

import '../../Feature/Screens/Home/home_page.dart';
import '../Utility/Firebase/firebase_storage.dart';
import '../Utility/Picker/image_pick_source.dart';

class RegisterProvider extends ChangeNotifier {
  final _authRepository = ImplAuthRepository();
  final _firebaseStorage = FirebaseStorageRef();
  final pickImageSource = ImagePickSource();

  XFile? selectedImage;
  Uint8List? imageReadAsByte;
  Future<void> registerUser(context,
      {required String email,
      required String password,
      required String username,
     }) async {
    final url=
    await uplaodImage();


    final result = await _authRepository.registerUser(
      email: email,
      password: password,
      username: username,
      image: url?? "https://cdn-icons-png.flaticon.com/512/149/149071.png",
    );

    if (result!.isSuccess()) {
      final userCredential = result.tryGetSuccess();
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ));
    } else if (result.isError()) {
      final userError = result.tryGetError();
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(userError?.error?.errors?[0].message ?? "Error"),
          );
        },
      );
    }
  }

  Future<void> pickImage() async {
    selectedImage = await pickImageSource.pickImageFromUser();
    imageReadAsByte = await selectedImage?.readAsBytes();
    notifyListeners();
  }

  Future<String?> uplaodImage() async {
    final url=await _firebaseStorage.uploadImage(imageReadAsByte, selectedImage!.name);
    return url;
  }
}
