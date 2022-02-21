import 'models/vehicle/vehicle.dart';

abstract class CarsApi {
  const CarsApi();

  /// Gives [Stream] of cars.
  Stream<List<Car>> getCars();

  /// Saves a [Car].
  Future<void> saveCar(Car car);

  /// Creates new [Car]
  Future<void> createCar(Car car);

  /// Updates existing [Car] or throws [CarNotFoundException]
  Future<void> updateCar(Car car);

  /// Deletes a [Car].
  Future<void> deleteCar(Car car);

  /// Delete [Car] by its id.
  Future<void> deleteCarById(String id);

  /// Deletes all [Car]s in storage.
  Future<void> deleteAllCars();
}

/// Error thrown when a [Car] is not found.
class CarNotFoundException implements Exception {}
