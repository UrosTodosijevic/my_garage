import 'dart:developer';
import 'dart:io' as io;

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:my_garage/data/api/images/images_api.dart';

class CustomImagesApi extends ImagesApi {
  const CustomImagesApi();

  @override
  Future<String> saveImage(XFile image) async {
    final path = await _documentDirectoryPath();
    final newLocation = '$path/${image.name}';
    await image.saveTo(newLocation);
    return newLocation;
  }

  @override
  Future<bool> deleteImage(String location) async {
    try {
      final file = io.File(location);
      await file.delete();
      return true;
    } catch (ex) {
      log('---> Unable to delete image:\n$ex');
      return false;
    }
  }

  Future<String> _documentDirectoryPath() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    return documentsDirectory.path;
  }
}
