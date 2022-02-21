import 'package:image_picker/image_picker.dart';

abstract class ImagesApi {
  const ImagesApi();

  Future<String> saveImage(XFile image);

  Future<bool> deleteImage(String location);
}
