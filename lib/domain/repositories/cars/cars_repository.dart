import 'package:my_garage/data/api/cars/cars_api.dart';

import '../../../data/api/cars/models/vehicle/vehicle.dart';

class CarsRepository {
  CarsRepository({
    required CarsApi carsApi,
  }) : _carsApi = carsApi;

  final CarsApi _carsApi;

  Stream<List<Car>> getCars() => _carsApi.getCars();

  Future<void> saveCar(Car car) => _carsApi.saveCar(car);

  Future<void> createCar(Car car) => _carsApi.createCar(car);

  Future<void> updateCar(Car car) => _carsApi.updateCar(car);

  Future<void> deleteCar(Car car) => _carsApi.deleteCar(car);

  Future<void> deleteCarById(String id) => _carsApi.deleteCarById(id);

  Future<void> deleteAllCars() => _carsApi.deleteAllCars();
}
