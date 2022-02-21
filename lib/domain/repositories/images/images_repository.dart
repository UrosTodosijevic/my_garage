import 'package:image_picker/image_picker.dart';
import 'package:my_garage/data/api/images/images_api.dart';

class ImagesRepository {
  const ImagesRepository({
    required ImagesApi imagesApi,
  }) : _imagesApi = imagesApi;

  final ImagesApi _imagesApi;

  Future<String> saveImage(XFile image) => _imagesApi.saveImage(image);

  Future<bool> deleteImage(String location) => _imagesApi.deleteImage(location);
}
