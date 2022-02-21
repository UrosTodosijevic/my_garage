import 'dart:convert';

import 'package:my_garage/data/api/cars/cars_api.dart';
import 'package:my_garage/data/api/cars/models/vehicle/car.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class LocalStorageCarsApi extends CarsApi {
  LocalStorageCarsApi({
    required SharedPreferences plugin,
  }) : _plugin = plugin {
    _init();
  }

  final SharedPreferences _plugin;

  final _carStreamController = BehaviorSubject<List<Car>>.seeded(const []);

  static const kCarsCollectionKey = '__cars_collection_key__';

  String? _getValue(String key) => _plugin.getString(key);

  Future<void> _setValue(String key, String value) =>
      _plugin.setString(key, value);

  void _init() {
    final carsJson = _getValue(kCarsCollectionKey);
    if (carsJson != null) {
      var cars = List<Map>.from(jsonDecode(carsJson) as List)
          .map((jsonMap) => Car.fromJson(Map<String, dynamic>.from(jsonMap)))
          .toList();
      _carStreamController.add(cars);
    } else {
      _carStreamController.add(const <Car>[]);
    }
  }

  @override
  Stream<List<Car>> getCars() => _carStreamController.asBroadcastStream();

  @override
  Future<void> saveCar(Car car) {
    final cars = [..._carStreamController.value];
    cars.add(car);
    _carStreamController.add(cars);
    return _setValue(kCarsCollectionKey, jsonEncode(cars));
  }

  @override
  Future<void> deleteCar(Car car) {
    final cars = <Car>[..._carStreamController.value];
    var contains = cars.contains(car);
    if (!contains) {
      throw CarNotFoundException();
    } else {
      cars.remove(car);
      _carStreamController.add(cars);
      return _setValue(kCarsCollectionKey, jsonEncode(cars));
    }
  }

  @override
  Future<void> deleteCarById(String id) {
    final cars = <Car>[..._carStreamController.value];
    final indexToBeDeleted = cars.indexWhere((car) => car.id == id);
    if (indexToBeDeleted == -1) {
      throw CarNotFoundException();
    } else {
      cars.removeAt(indexToBeDeleted);
      _carStreamController.add(cars);
      return _setValue(kCarsCollectionKey, jsonEncode(cars));
    }
  }

  @override
  Future<void> deleteAllCars() {
    _carStreamController.add(const []);
    return _setValue(kCarsCollectionKey, jsonEncode([]));
  }

  @override
  Future<void> createCar(Car car) {
    car = car.copyWith(id: const Uuid().v4());
    final cars = [..._carStreamController.value];
    cars.add(car);
    _carStreamController.add(cars);
    return _setValue(kCarsCollectionKey, jsonEncode(cars));
  }

  @override
  Future<void> updateCar(Car car) {
    final cars = [..._carStreamController.value];
    final indexForUpdate = cars.indexWhere((c) => c.id == car.id);
    if (indexForUpdate == -1) {
      throw CarNotFoundException();
    } else {
      cars[indexForUpdate] = car;
      _carStreamController.add(cars);
      return _setValue(kCarsCollectionKey, jsonEncode(cars));
    }
  }
}
