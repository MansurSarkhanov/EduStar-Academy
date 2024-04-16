import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

final class FirebaseStorageRef {
  final storageRef = FirebaseStorage.instance.ref();
  XFile? userImage;

  void uploadImage(Uint8List? imageReadAsByte, String name) {
    if (imageReadAsByte != null) {
      final storage =
          storageRef.child('profile/').child(name).putData(imageReadAsByte, SettableMetadata(contentType: 'image/png'));
    }
  }
}
