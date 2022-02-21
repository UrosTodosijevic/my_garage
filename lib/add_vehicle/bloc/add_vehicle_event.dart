part of 'add_vehicle_bloc.dart';

@immutable
abstract class AddVehicleEvent extends Equatable {
  const AddVehicleEvent();

  @override
  List<Object?> get props => [];
}

class MakerChanged extends AddVehicleEvent {
  const MakerChanged({required this.maker});

  final Maker maker;

  @override
  List<Object> get props => [maker];
}

class ModelChanged extends AddVehicleEvent {
  const ModelChanged({required this.model});

  final String model;

  @override
  List<Object> get props => [model];
}

class YearChanged extends AddVehicleEvent {
  const YearChanged({required this.year});

  final String year;

  @override
  List<Object> get props => [year];
}

class KmsDrivenChanged extends AddVehicleEvent {
  const KmsDrivenChanged({required this.kmsDriven});

  final String kmsDriven;

  @override
  List<Object> get props => [kmsDriven];
}

class BodyTypeChanged extends AddVehicleEvent {
  const BodyTypeChanged({required this.bodyType});

  final BodyType bodyType;

  @override
  List<Object> get props => [bodyType];
}

class FuelChanged extends AddVehicleEvent {
  const FuelChanged({required this.fuel});

  final Fuel fuel;

  @override
  List<Object> get props => [fuel];
}

class DriveTypeChanged extends AddVehicleEvent {
  const DriveTypeChanged({required this.driveType});

  final DriveType driveType;

  @override
  List<Object> get props => [driveType];
}

class TransmissionChanged extends AddVehicleEvent {
  const TransmissionChanged({required this.transmission});

  final Transmission transmission;

  @override
  List<Object> get props => [transmission];
}

class SteeringWheelSideChanged extends AddVehicleEvent {
  const SteeringWheelSideChanged({required this.steeringWheelSide});

  final SteeringWheelSide steeringWheelSide;

  @override
  List<Object> get props => [steeringWheelSide];
}

class NumberOfSeatsChanged extends AddVehicleEvent {
  const NumberOfSeatsChanged({required this.numberOfSeats});

  final String numberOfSeats;

  @override
  List<Object> get props => [numberOfSeats];
}

class NumberOfDoorsChanged extends AddVehicleEvent {
  const NumberOfDoorsChanged({required this.numberOfDoors});

  final NumberOfDoors numberOfDoors;

  @override
  List<Object> get props => [numberOfDoors];
}

class InteriorMaterialChanged extends AddVehicleEvent {
  const InteriorMaterialChanged({required this.interiorMaterial});

  final InteriorMaterial interiorMaterial;

  @override
  List<Object> get props => [interiorMaterial];
}

class InteriorColorChanged extends AddVehicleEvent {
  const InteriorColorChanged({required this.interiorColor});

  final InteriorColor interiorColor;

  @override
  List<Object> get props => [interiorColor];
}

class AirConditioningChanged extends AddVehicleEvent {
  const AirConditioningChanged({required this.airConditioning});

  final bool airConditioning;

  @override
  List<Object> get props => [airConditioning];
}

class BodyColorChanged extends AddVehicleEvent {
  const BodyColorChanged({required this.bodyColor});

  final BodyColor bodyColor;

  @override
  List<Object> get props => [bodyColor];
}

class FormSubmitted extends AddVehicleEvent {
  const FormSubmitted();
}

class YearUnfocused extends AddVehicleEvent {
  const YearUnfocused();
}

class ImagePicked extends AddVehicleEvent {
  const ImagePicked({required this.image});

  final XFile image;

  @override
  List<Object> get props => [image];
}

class ImageDiscarded extends AddVehicleEvent {
  const ImageDiscarded();
}

class ImageDiscardedBeforeExiting extends AddVehicleEvent {
  const ImageDiscardedBeforeExiting();
}
