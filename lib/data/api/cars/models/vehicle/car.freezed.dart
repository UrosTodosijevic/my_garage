// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
class _$CarTearOff {
  const _$CarTearOff();

  _Car call(
      {String? id = null,
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
      String imageLocation = ''}) {
    return _Car(
      id: id,
      maker: maker,
      model: model,
      year: year,
      kmsDriven: kmsDriven,
      bodyType: bodyType,
      fuel: fuel,
      driveType: driveType,
      transmission: transmission,
      steeringWheelSide: steeringWheelSide,
      numberOfSeats: numberOfSeats,
      numberOfDoors: numberOfDoors,
      interiorMaterial: interiorMaterial,
      interiorColor: interiorColor,
      airConditioning: airConditioning,
      bodyColor: bodyColor,
      imageLocation: imageLocation,
    );
  }

  Car fromJson(Map<String, Object?> json) {
    return Car.fromJson(json);
  }
}

/// @nodoc
const $Car = _$CarTearOff();

/// @nodoc
mixin _$Car {
  String? get id => throw _privateConstructorUsedError;

  Maker get maker => throw _privateConstructorUsedError;

  String get model => throw _privateConstructorUsedError;

  int get year => throw _privateConstructorUsedError;

  int get kmsDriven => throw _privateConstructorUsedError;

  BodyType get bodyType => throw _privateConstructorUsedError;

  Fuel get fuel => throw _privateConstructorUsedError;

  DriveType get driveType => throw _privateConstructorUsedError;

  Transmission get transmission => throw _privateConstructorUsedError;

  SteeringWheelSide get steeringWheelSide => throw _privateConstructorUsedError;

  int get numberOfSeats => throw _privateConstructorUsedError;

  NumberOfDoors get numberOfDoors => throw _privateConstructorUsedError;

  InteriorMaterial get interiorMaterial => throw _privateConstructorUsedError;

  InteriorColor get interiorColor => throw _privateConstructorUsedError;

  bool get airConditioning => throw _privateConstructorUsedError;

  BodyColor get bodyColor => throw _privateConstructorUsedError;

  String get imageLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res>;

  $Res call(
      {String? id,
      Maker maker,
      String model,
      int year,
      int kmsDriven,
      BodyType bodyType,
      Fuel fuel,
      DriveType driveType,
      Transmission transmission,
      SteeringWheelSide steeringWheelSide,
      int numberOfSeats,
      NumberOfDoors numberOfDoors,
      InteriorMaterial interiorMaterial,
      InteriorColor interiorColor,
      bool airConditioning,
      BodyColor bodyColor,
      String imageLocation});
}

/// @nodoc
class _$CarCopyWithImpl<$Res> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  final Car _value;

  // ignore: unused_field
  final $Res Function(Car) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? maker = freezed,
    Object? model = freezed,
    Object? year = freezed,
    Object? kmsDriven = freezed,
    Object? bodyType = freezed,
    Object? fuel = freezed,
    Object? driveType = freezed,
    Object? transmission = freezed,
    Object? steeringWheelSide = freezed,
    Object? numberOfSeats = freezed,
    Object? numberOfDoors = freezed,
    Object? interiorMaterial = freezed,
    Object? interiorColor = freezed,
    Object? airConditioning = freezed,
    Object? bodyColor = freezed,
    Object? imageLocation = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      maker: maker == freezed
          ? _value.maker
          : maker // ignore: cast_nullable_to_non_nullable
              as Maker,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      kmsDriven: kmsDriven == freezed
          ? _value.kmsDriven
          : kmsDriven // ignore: cast_nullable_to_non_nullable
              as int,
      bodyType: bodyType == freezed
          ? _value.bodyType
          : bodyType // ignore: cast_nullable_to_non_nullable
              as BodyType,
      fuel: fuel == freezed
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as Fuel,
      driveType: driveType == freezed
          ? _value.driveType
          : driveType // ignore: cast_nullable_to_non_nullable
              as DriveType,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as Transmission,
      steeringWheelSide: steeringWheelSide == freezed
          ? _value.steeringWheelSide
          : steeringWheelSide // ignore: cast_nullable_to_non_nullable
              as SteeringWheelSide,
      numberOfSeats: numberOfSeats == freezed
          ? _value.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDoors: numberOfDoors == freezed
          ? _value.numberOfDoors
          : numberOfDoors // ignore: cast_nullable_to_non_nullable
              as NumberOfDoors,
      interiorMaterial: interiorMaterial == freezed
          ? _value.interiorMaterial
          : interiorMaterial // ignore: cast_nullable_to_non_nullable
              as InteriorMaterial,
      interiorColor: interiorColor == freezed
          ? _value.interiorColor
          : interiorColor // ignore: cast_nullable_to_non_nullable
              as InteriorColor,
      airConditioning: airConditioning == freezed
          ? _value.airConditioning
          : airConditioning // ignore: cast_nullable_to_non_nullable
              as bool,
      bodyColor: bodyColor == freezed
          ? _value.bodyColor
          : bodyColor // ignore: cast_nullable_to_non_nullable
              as BodyColor,
      imageLocation: imageLocation == freezed
          ? _value.imageLocation
          : imageLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CarCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$CarCopyWith(_Car value, $Res Function(_Car) then) =
      __$CarCopyWithImpl<$Res>;

  @override
  $Res call(
      {String? id,
      Maker maker,
      String model,
      int year,
      int kmsDriven,
      BodyType bodyType,
      Fuel fuel,
      DriveType driveType,
      Transmission transmission,
      SteeringWheelSide steeringWheelSide,
      int numberOfSeats,
      NumberOfDoors numberOfDoors,
      InteriorMaterial interiorMaterial,
      InteriorColor interiorColor,
      bool airConditioning,
      BodyColor bodyColor,
      String imageLocation});
}

/// @nodoc
class __$CarCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res>
    implements _$CarCopyWith<$Res> {
  __$CarCopyWithImpl(_Car _value, $Res Function(_Car) _then)
      : super(_value, (v) => _then(v as _Car));

  @override
  _Car get _value => super._value as _Car;

  @override
  $Res call({
    Object? id = freezed,
    Object? maker = freezed,
    Object? model = freezed,
    Object? year = freezed,
    Object? kmsDriven = freezed,
    Object? bodyType = freezed,
    Object? fuel = freezed,
    Object? driveType = freezed,
    Object? transmission = freezed,
    Object? steeringWheelSide = freezed,
    Object? numberOfSeats = freezed,
    Object? numberOfDoors = freezed,
    Object? interiorMaterial = freezed,
    Object? interiorColor = freezed,
    Object? airConditioning = freezed,
    Object? bodyColor = freezed,
    Object? imageLocation = freezed,
  }) {
    return _then(_Car(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      maker: maker == freezed
          ? _value.maker
          : maker // ignore: cast_nullable_to_non_nullable
              as Maker,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      kmsDriven: kmsDriven == freezed
          ? _value.kmsDriven
          : kmsDriven // ignore: cast_nullable_to_non_nullable
              as int,
      bodyType: bodyType == freezed
          ? _value.bodyType
          : bodyType // ignore: cast_nullable_to_non_nullable
              as BodyType,
      fuel: fuel == freezed
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as Fuel,
      driveType: driveType == freezed
          ? _value.driveType
          : driveType // ignore: cast_nullable_to_non_nullable
              as DriveType,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as Transmission,
      steeringWheelSide: steeringWheelSide == freezed
          ? _value.steeringWheelSide
          : steeringWheelSide // ignore: cast_nullable_to_non_nullable
              as SteeringWheelSide,
      numberOfSeats: numberOfSeats == freezed
          ? _value.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDoors: numberOfDoors == freezed
          ? _value.numberOfDoors
          : numberOfDoors // ignore: cast_nullable_to_non_nullable
              as NumberOfDoors,
      interiorMaterial: interiorMaterial == freezed
          ? _value.interiorMaterial
          : interiorMaterial // ignore: cast_nullable_to_non_nullable
              as InteriorMaterial,
      interiorColor: interiorColor == freezed
          ? _value.interiorColor
          : interiorColor // ignore: cast_nullable_to_non_nullable
              as InteriorColor,
      airConditioning: airConditioning == freezed
          ? _value.airConditioning
          : airConditioning // ignore: cast_nullable_to_non_nullable
              as bool,
      bodyColor: bodyColor == freezed
          ? _value.bodyColor
          : bodyColor // ignore: cast_nullable_to_non_nullable
              as BodyColor,
      imageLocation: imageLocation == freezed
          ? _value.imageLocation
          : imageLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Car implements _Car {
  _$_Car(
      {this.id = null,
      required this.maker,
      required this.model,
      required this.year,
      required this.kmsDriven,
      required this.bodyType,
      required this.fuel,
      required this.driveType,
      required this.transmission,
      required this.steeringWheelSide,
      required this.numberOfSeats,
      required this.numberOfDoors,
      required this.interiorMaterial,
      required this.interiorColor,
      required this.airConditioning,
      required this.bodyColor,
      this.imageLocation = ''})
      : assert(model.isNotEmpty, 'Model can not be empty.'),
        assert(year >= 1970 && year <= DateTime.now().year,
            'Invalid year of making.'),
        assert(kmsDriven >= 0 && kmsDriven <= 1500000,
            'Invalid parameter - kms driven.'),
        assert(numberOfSeats >= 2 && numberOfSeats <= 9,
            'Invalid number of seats.');

  factory _$_Car.fromJson(Map<String, dynamic> json) => _$$_CarFromJson(json);

  @JsonKey()
  @override
  final String? id;
  @override
  final Maker maker;
  @override
  final String model;
  @override
  final int year;
  @override
  final int kmsDriven;
  @override
  final BodyType bodyType;
  @override
  final Fuel fuel;
  @override
  final DriveType driveType;
  @override
  final Transmission transmission;
  @override
  final SteeringWheelSide steeringWheelSide;
  @override
  final int numberOfSeats;
  @override
  final NumberOfDoors numberOfDoors;
  @override
  final InteriorMaterial interiorMaterial;
  @override
  final InteriorColor interiorColor;
  @override
  final bool airConditioning;
  @override
  final BodyColor bodyColor;
  @JsonKey()
  @override
  final String imageLocation;

  @override
  String toString() {
    return 'Car(id: $id, maker: $maker, model: $model, year: $year, kmsDriven: $kmsDriven, bodyType: $bodyType, fuel: $fuel, driveType: $driveType, transmission: $transmission, steeringWheelSide: $steeringWheelSide, numberOfSeats: $numberOfSeats, numberOfDoors: $numberOfDoors, interiorMaterial: $interiorMaterial, interiorColor: $interiorColor, airConditioning: $airConditioning, bodyColor: $bodyColor, imageLocation: $imageLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Car &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.maker, maker) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.kmsDriven, kmsDriven) &&
            const DeepCollectionEquality().equals(other.bodyType, bodyType) &&
            const DeepCollectionEquality().equals(other.fuel, fuel) &&
            const DeepCollectionEquality().equals(other.driveType, driveType) &&
            const DeepCollectionEquality()
                .equals(other.transmission, transmission) &&
            const DeepCollectionEquality()
                .equals(other.steeringWheelSide, steeringWheelSide) &&
            const DeepCollectionEquality()
                .equals(other.numberOfSeats, numberOfSeats) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDoors, numberOfDoors) &&
            const DeepCollectionEquality()
                .equals(other.interiorMaterial, interiorMaterial) &&
            const DeepCollectionEquality()
                .equals(other.interiorColor, interiorColor) &&
            const DeepCollectionEquality()
                .equals(other.airConditioning, airConditioning) &&
            const DeepCollectionEquality().equals(other.bodyColor, bodyColor) &&
            const DeepCollectionEquality()
                .equals(other.imageLocation, imageLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(maker),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(kmsDriven),
      const DeepCollectionEquality().hash(bodyType),
      const DeepCollectionEquality().hash(fuel),
      const DeepCollectionEquality().hash(driveType),
      const DeepCollectionEquality().hash(transmission),
      const DeepCollectionEquality().hash(steeringWheelSide),
      const DeepCollectionEquality().hash(numberOfSeats),
      const DeepCollectionEquality().hash(numberOfDoors),
      const DeepCollectionEquality().hash(interiorMaterial),
      const DeepCollectionEquality().hash(interiorColor),
      const DeepCollectionEquality().hash(airConditioning),
      const DeepCollectionEquality().hash(bodyColor),
      const DeepCollectionEquality().hash(imageLocation));

  @JsonKey(ignore: true)
  @override
  _$CarCopyWith<_Car> get copyWith =>
      __$CarCopyWithImpl<_Car>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarToJson(this);
  }
}

abstract class _Car implements Car {
  factory _Car(
      {String? id,
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
      String imageLocation}) = _$_Car;

  factory _Car.fromJson(Map<String, dynamic> json) = _$_Car.fromJson;

  @override
  String? get id;

  @override
  Maker get maker;

  @override
  String get model;

  @override
  int get year;

  @override
  int get kmsDriven;

  @override
  BodyType get bodyType;

  @override
  Fuel get fuel;

  @override
  DriveType get driveType;

  @override
  Transmission get transmission;

  @override
  SteeringWheelSide get steeringWheelSide;

  @override
  int get numberOfSeats;

  @override
  NumberOfDoors get numberOfDoors;

  @override
  InteriorMaterial get interiorMaterial;

  @override
  InteriorColor get interiorColor;

  @override
  bool get airConditioning;

  @override
  BodyColor get bodyColor;

  @override
  String get imageLocation;

  @override
  @JsonKey(ignore: true)
  _$CarCopyWith<_Car> get copyWith => throw _privateConstructorUsedError;
}
