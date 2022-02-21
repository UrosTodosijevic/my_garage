import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'car.freezed.dart';

part 'car.g.dart';

@freezed
class Car with _$Car {
  // const Car._();

  @Assert('model.isNotEmpty', 'Model can not be empty.')
  @Assert(
      'year >= 1970 && year <= DateTime.now().year', 'Invalid year of making.')
  @Assert('kmsDriven >= 0 && kmsDriven <= 1500000',
      'Invalid parameter - kms driven.')
  @Assert(
      'numberOfSeats >= 2 && numberOfSeats <= 9', 'Invalid number of seats.')
  factory Car({
    @Default(null) String? id,
    required Maker maker,
    required String model,
    required int year,
    required int kmsDriven,
    required BodyType bodyType,
    required Fuel fuel,
    required DriveType driveType,
    required Transmission transmission,
    required SteeringWheelSide steeringWheelSide,
    required int numberOfSeats,
    required NumberOfDoors numberOfDoors,
    required InteriorMaterial interiorMaterial,
    required InteriorColor interiorColor,
    required bool airConditioning,
    required BodyColor bodyColor,
    @Default('') String imageLocation,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
