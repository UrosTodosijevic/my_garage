part of 'add_vehicle_bloc.dart';

// enum AddVehicleStatus { initial, creating, success, failure }

@immutable
class AddVehicleState extends Equatable {
  const AddVehicleState({
    this.makerInput = const MakerInput.pure(),
    this.modelInput = const ModelInput.pure(),
    this.yearInput = const YearInput.pure(),
    this.kmsDrivenInput = const KmsDrivenInput.pure(),
    this.bodyTypeInput = const BodyTypeInput.pure(),
    this.fuelInput = const FuelInput.pure(),
    this.driveTypeInput = const DriveTypeInput.pure(),
    this.transmissionInput = const TransmissionInput.pure(),
    this.steeringWheelSideInput = const SteeringWheelSideInput.pure(),
    this.numberOfSeatsInput = const NumberOfSeatsInput.pure(),
    this.numberOfDoorsInput = const NumberOfDoorsInput.pure(),
    this.interiorMaterialInput = const InteriorMaterialInput.pure(),
    this.interiorColorInput = const InteriorColorInput.pure(),
    this.airConditioningInput = const AirConditioningInput.pure(),
    this.bodyColorInput = const BodyColorInput.pure(),
    this.status = FormzStatus.pure,
    this.imageLocation = '',
  });

  final MakerInput makerInput;
  final ModelInput modelInput;
  final YearInput yearInput;
  final KmsDrivenInput kmsDrivenInput;
  final BodyTypeInput bodyTypeInput;
  final FuelInput fuelInput;
  final DriveTypeInput driveTypeInput;
  final TransmissionInput transmissionInput;
  final SteeringWheelSideInput steeringWheelSideInput;
  final NumberOfSeatsInput numberOfSeatsInput;
  final NumberOfDoorsInput numberOfDoorsInput;
  final InteriorMaterialInput interiorMaterialInput;
  final InteriorColorInput interiorColorInput;
  final AirConditioningInput airConditioningInput;
  final BodyColorInput bodyColorInput;

  final FormzStatus status;

  final String imageLocation;

  AddVehicleState copyWith({
    MakerInput? makerInput,
    ModelInput? modelInput,
    YearInput? yearInput,
    KmsDrivenInput? kmsDrivenInput,
    BodyTypeInput? bodyTypeInput,
    FuelInput? fuelInput,
    DriveTypeInput? driveTypeInput,
    TransmissionInput? transmissionInput,
    SteeringWheelSideInput? steeringWheelSideInput,
    NumberOfSeatsInput? numberOfSeatsInput,
    NumberOfDoorsInput? numberOfDoorsInput,
    InteriorMaterialInput? interiorMaterialInput,
    InteriorColorInput? interiorColorInput,
    AirConditioningInput? airConditioningInput,
    BodyColorInput? bodyColorInput,
    FormzStatus? status,
    String? imageLocation,
  }) {
    return AddVehicleState(
      makerInput: makerInput ?? this.makerInput,
      modelInput: modelInput ?? this.modelInput,
      yearInput: yearInput ?? this.yearInput,
      kmsDrivenInput: kmsDrivenInput ?? this.kmsDrivenInput,
      bodyTypeInput: bodyTypeInput ?? this.bodyTypeInput,
      fuelInput: fuelInput ?? this.fuelInput,
      driveTypeInput: driveTypeInput ?? this.driveTypeInput,
      transmissionInput: transmissionInput ?? this.transmissionInput,
      steeringWheelSideInput:
          steeringWheelSideInput ?? this.steeringWheelSideInput,
      numberOfSeatsInput: numberOfSeatsInput ?? this.numberOfSeatsInput,
      numberOfDoorsInput: numberOfDoorsInput ?? this.numberOfDoorsInput,
      interiorMaterialInput:
          interiorMaterialInput ?? this.interiorMaterialInput,
      interiorColorInput: interiorColorInput ?? this.interiorColorInput,
      airConditioningInput: airConditioningInput ?? this.airConditioningInput,
      bodyColorInput: bodyColorInput ?? this.bodyColorInput,
      status: status ?? this.status,
      imageLocation: imageLocation ?? this.imageLocation,
    );
  }

  @override
  List<Object> get props => [
        makerInput,
        modelInput,
        yearInput,
        kmsDrivenInput,
        bodyTypeInput,
        fuelInput,
        driveTypeInput,
        transmissionInput,
        steeringWheelSideInput,
        numberOfSeatsInput,
        numberOfDoorsInput,
        interiorMaterialInput,
        interiorColorInput,
        airConditioningInput,
        bodyColorInput,
        status,
        imageLocation
      ];
}
