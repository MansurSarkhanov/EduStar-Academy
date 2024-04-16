import 'package:image_picker/image_picker.dart';

final class ImagePickSource {
  final _picker = ImagePicker();

  Future<XFile?> pickImageFromUser() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return image;
    }
    return null;
  }
}
