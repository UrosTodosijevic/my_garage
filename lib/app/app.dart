import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/domain/repositories/images/images_repository.dart';
import 'package:my_garage/simple_screens/simple_screens.dart';

import '../domain/repositories/cars/cars_repository.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.carsRepository,
    required this.imagesRepository,
  }) : super(key: key);

  final CarsRepository carsRepository;
  final ImagesRepository imagesRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: carsRepository),
        RepositoryProvider.value(value: imagesRepository),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Garage',
      home: SplashScreen(),
    );
  }
}
