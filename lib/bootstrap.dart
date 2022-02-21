import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:my_garage/domain/repositories/cars/cars_repository.dart';
import 'package:my_garage/domain/repositories/images/images_repository.dart';

import 'app/app.dart';
import 'data/api/cars/cars_api.dart';

Future<void> bootstrap({required CarsApi carsApi, required imagesApi}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final carsRepository = CarsRepository(carsApi: carsApi);
  final imagesRepository = ImagesRepository(imagesApi: imagesApi);

  runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(
          App(
            carsRepository: carsRepository,
            imagesRepository: imagesRepository,
          ),
        ),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
