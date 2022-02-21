import 'package:flutter/widgets.dart';
import 'package:my_garage/bootstrap.dart';
import 'package:my_garage/data/api/cars/local_storage_cars_api.dart';
import 'package:my_garage/data/api/images/custom_image_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // FlutterServicesBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();
  final carsApi = LocalStorageCarsApi(
    plugin: await SharedPreferences.getInstance(),
  );

  final imagesApi = CustomImagesApi();

  bootstrap(carsApi: carsApi, imagesApi: imagesApi);
}
