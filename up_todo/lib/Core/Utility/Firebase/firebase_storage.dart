import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

final class FirebaseStorageRef {
  final storageRef = FirebaseStorage.instance.ref();
  XFile? userImage;

  Future<String?> uploadImage(Uint8List? imageReadAsByte, String name) async {
    if (imageReadAsByte != null) {
      final storage = await storageRef
          .child('profile/')
          .child(name)
          .putData(imageReadAsByte, SettableMetadata(contentType: 'image/png'));

      final url = await storage.ref.getDownloadURL();
      return url;
    }
    return null;
  }
}
