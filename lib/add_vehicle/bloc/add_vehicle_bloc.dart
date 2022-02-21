import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:my_garage/data/api/cars/models/vehicle/vehicle.dart';
import 'package:my_garage/domain/repositories/cars/cars_repository.dart';
import 'package:my_garage/domain/repositories/images/images_repository.dart';

import '../models/models.dart';

part 'add_vehicle_event.dart';

part 'add_vehicle_state.dart';

class AddVehicleBloc extends Bloc<AddVehicleEvent, AddVehicleState> {
  AddVehicleBloc({
    required CarsRepository carsRepository,
    required ImagesRepository imagesRepository,
  })  : _carsRepository = carsRepository,
        _imagesRepository = imagesRepository,
        super(const AddVehicleState()) {
    on<MakerChanged>(_onMakerChanged);
    on<ModelChanged>(_onModelChanged);
    on<YearChanged>(_onYearChanged);
    on<KmsDrivenChanged>(_onKmsDrivenChanged);
    on<BodyTypeChanged>(_onBodyTypeChanged);
    on<FuelChanged>(_onFuelChanged);
    on<DriveTypeChanged>(_onDriveTypeChanged);
    on<TransmissionChanged>(_onTransmissionChanged);
    on<SteeringWheelSideChanged>(_onSteeringWheelSideChanged);
    on<NumberOfSeatsChanged>(_onNumberOfSearsChanged);
    on<NumberOfDoorsChanged>(_onNumberOfDoorsChanged);
    on<InteriorMaterialChanged>(_onInteriorMaterialChanged);
    on<InteriorColorChanged>(_onInteriorColorChanged);
    on<AirConditioningChanged>(_onAirConditioningChanged);
    on<BodyColorChanged>(_onBodyColorChanged);
    on<FormSubmitted>(_onFormSubmitted);
    on<YearUnfocused>(_onYearUnfocused);
    on<ImagePicked>(_onImagePicked);
    on<ImageDiscarded>(_onImageDiscarded);
    on<ImageDiscardedBeforeExiting>(_onImageDiscardedBeforeExiting);
  }

  final CarsRepository _carsRepository;
  final ImagesRepository _imagesRepository;

  @override
  void onTransition(Transition<AddVehicleEvent, AddVehicleState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  void _onMakerChanged(MakerChanged event, Emitter<AddVehicleState> emit) {
    final makerInput = MakerInput.dirty(event.maker);
    emit(state.copyWith(
      makerInput: makerInput.valid ? makerInput : MakerInput.pure(event.maker),
      status: Formz.validate([
        makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onModelChanged(ModelChanged event, Emitter<AddVehicleState> emit) {
    final modelInput = ModelInput.dirty(event.model);
    emit(state.copyWith(
      modelInput: modelInput.valid ? modelInput : ModelInput.pure(event.model),
      status: Formz.validate([
        state.makerInput,
        modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onYearChanged(YearChanged event, Emitter<AddVehicleState> emit) {
    final yearInput = YearInput.dirty(event.year);
    emit(state.copyWith(
      yearInput: yearInput.valid ? yearInput : YearInput.pure(event.year),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onKmsDrivenChanged(
      KmsDrivenChanged event, Emitter<AddVehicleState> emit) {
    final kmsDrivenInput = KmsDrivenInput.dirty(event.kmsDriven);
    emit(state.copyWith(
      kmsDrivenInput: kmsDrivenInput.valid
          ? kmsDrivenInput
          : KmsDrivenInput.pure(event.kmsDriven),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onBodyTypeChanged(
      BodyTypeChanged event, Emitter<AddVehicleState> emit) {
    final bodyTypeInput = BodyTypeInput.dirty(event.bodyType);
    emit(state.copyWith(
      bodyTypeInput: bodyTypeInput.valid
          ? bodyTypeInput
          : BodyTypeInput.pure(event.bodyType),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onFuelChanged(FuelChanged event, Emitter<AddVehicleState> emit) {
    final fuelInput = FuelInput.dirty(event.fuel);
    emit(state.copyWith(
      fuelInput: fuelInput.valid ? fuelInput : FuelInput.pure(event.fuel),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onDriveTypeChanged(
      DriveTypeChanged event, Emitter<AddVehicleState> emit) {
    final driveTypeInput = DriveTypeInput.dirty(event.driveType);
    emit(state.copyWith(
      driveTypeInput: driveTypeInput.valid
          ? driveTypeInput
          : DriveTypeInput.pure(event.driveType),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onTransmissionChanged(
      TransmissionChanged event, Emitter<AddVehicleState> emit) {
    final transmissionInput = TransmissionInput.dirty(event.transmission);
    emit(state.copyWith(
      transmissionInput: transmissionInput.valid
          ? transmissionInput
          : TransmissionInput.pure(event.transmission),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onSteeringWheelSideChanged(
      SteeringWheelSideChanged event, Emitter<AddVehicleState> emit) {
    final steeringWheelSideInput =
        SteeringWheelSideInput.dirty(event.steeringWheelSide);
    emit(state.copyWith(
      steeringWheelSideInput: steeringWheelSideInput.valid
          ? steeringWheelSideInput
          : SteeringWheelSideInput.pure(event.steeringWheelSide),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onNumberOfSearsChanged(
      NumberOfSeatsChanged event, Emitter<AddVehicleState> emit) {
    final numberOfSeatsInput = NumberOfSeatsInput.dirty(event.numberOfSeats);
    emit(state.copyWith(
      numberOfSeatsInput: numberOfSeatsInput.valid
          ? numberOfSeatsInput
          : NumberOfSeatsInput.pure(event.numberOfSeats),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onNumberOfDoorsChanged(
      NumberOfDoorsChanged event, Emitter<AddVehicleState> emit) {
    final numberOfDoorsInput = NumberOfDoorsInput.dirty(event.numberOfDoors);
    emit(state.copyWith(
      numberOfDoorsInput: numberOfDoorsInput.valid
          ? numberOfDoorsInput
          : NumberOfDoorsInput.pure(event.numberOfDoors),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onInteriorMaterialChanged(
      InteriorMaterialChanged event, Emitter<AddVehicleState> emit) {
    final interiorMaterialInput =
        InteriorMaterialInput.dirty(event.interiorMaterial);
    emit(state.copyWith(
      interiorMaterialInput: interiorMaterialInput.valid
          ? interiorMaterialInput
          : InteriorMaterialInput.pure(event.interiorMaterial),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onInteriorColorChanged(
      InteriorColorChanged event, Emitter<AddVehicleState> emit) {
    final interiorColorInput = InteriorColorInput.dirty(event.interiorColor);
    emit(state.copyWith(
      interiorColorInput: interiorColorInput.valid
          ? interiorColorInput
          : InteriorColorInput.pure(event.interiorColor),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onAirConditioningChanged(
      AirConditioningChanged event, Emitter<AddVehicleState> emit) {
    final airConditioningInput =
        AirConditioningInput.dirty(event.airConditioning);
    emit(state.copyWith(
      airConditioningInput: airConditioningInput.valid
          ? airConditioningInput
          : AirConditioningInput.pure(event.airConditioning),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  void _onBodyColorChanged(
      BodyColorChanged event, Emitter<AddVehicleState> emit) {
    final bodyColorInput = BodyColorInput.dirty(event.bodyColor);
    emit(state.copyWith(
      bodyColorInput: bodyColorInput.valid
          ? bodyColorInput
          : BodyColorInput.pure(event.bodyColor),
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        state.yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        bodyColorInput,
      ]),
    ));
  }

  Future<void> _onFormSubmitted(
      FormSubmitted event, Emitter<AddVehicleState> emit) async {
    final makerInput = MakerInput.dirty(state.makerInput.value);
    final modelInput = ModelInput.dirty(state.modelInput.value);
    final yearInput = YearInput.dirty(state.yearInput.value);
    final kmsDrivenInput = KmsDrivenInput.dirty(state.kmsDrivenInput.value);
    final bodyTypeInput = BodyTypeInput.dirty(state.bodyTypeInput.value);
    final fuelInput = FuelInput.dirty(state.fuelInput.value);
    final driveTypeInput = DriveTypeInput.dirty(state.driveTypeInput.value);
    final transmissionInput =
        TransmissionInput.dirty(state.transmissionInput.value);
    final steeringWheelSideInput =
        SteeringWheelSideInput.dirty(state.steeringWheelSideInput.value);
    final numberOfSeatsInput =
        NumberOfSeatsInput.dirty(state.numberOfSeatsInput.value);
    final numberOfDoorsInput =
        NumberOfDoorsInput.dirty(state.numberOfDoorsInput.value);
    final interiorMaterialInput =
        InteriorMaterialInput.dirty(state.interiorMaterialInput.value);
    final interiorColorInput =
        InteriorColorInput.dirty(state.interiorColorInput.value);
    final airConditioningInput =
        AirConditioningInput.dirty(state.airConditioningInput.value);
    final bodyColorInput = BodyColorInput.dirty(state.bodyColorInput.value);
    emit(state.copyWith(
      makerInput: makerInput,
      modelInput: modelInput,
      yearInput: yearInput,
      kmsDrivenInput: kmsDrivenInput,
      bodyTypeInput: bodyTypeInput,
      fuelInput: fuelInput,
      driveTypeInput: driveTypeInput,
      transmissionInput: transmissionInput,
      steeringWheelSideInput: steeringWheelSideInput,
      numberOfSeatsInput: numberOfSeatsInput,
      numberOfDoorsInput: numberOfDoorsInput,
      interiorMaterialInput: interiorMaterialInput,
      interiorColorInput: interiorColorInput,
      airConditioningInput: airConditioningInput,
      bodyColorInput: bodyColorInput,
      status: Formz.validate([
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
      ]),
    ));
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final car = Car(
        maker: makerInput.value!,
        model: modelInput.value,
        year: int.tryParse(yearInput.value)!,
        kmsDriven: int.tryParse(kmsDrivenInput.value)!,
        bodyType: bodyTypeInput.value!,
        fuel: fuelInput.value!,
        driveType: driveTypeInput.value!,
        transmission: transmissionInput.value!,
        steeringWheelSide: steeringWheelSideInput.value!,
        numberOfSeats: int.tryParse(numberOfSeatsInput.value)!,
        numberOfDoors: numberOfDoorsInput.value!,
        interiorMaterial: interiorMaterialInput.value!,
        interiorColor: interiorColorInput.value!,
        airConditioning: airConditioningInput.value,
        bodyColor: bodyColorInput.value!,
        imageLocation: state.imageLocation,
      );
      await _carsRepository.createCar(car);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    }
  }

  FutureOr<void> _onYearUnfocused(
      YearUnfocused event, Emitter<AddVehicleState> emit) {
    final yearInput = YearInput.dirty(state.yearInput.value);
    emit(state.copyWith(
      yearInput: yearInput,
      status: Formz.validate([
        state.makerInput,
        state.modelInput,
        yearInput,
        state.kmsDrivenInput,
        state.bodyTypeInput,
        state.fuelInput,
        state.driveTypeInput,
        state.transmissionInput,
        state.steeringWheelSideInput,
        state.numberOfSeatsInput,
        state.numberOfDoorsInput,
        state.interiorMaterialInput,
        state.interiorColorInput,
        state.airConditioningInput,
        state.bodyColorInput,
      ]),
    ));
  }

  FutureOr<void> _onImagePicked(
      ImagePicked event, Emitter<AddVehicleState> emit) async {
    final imageLocation = await _imagesRepository.saveImage(event.image);
    emit(state.copyWith(imageLocation: imageLocation));
  }

  FutureOr<void> _onImageDiscarded(
      ImageDiscarded event, Emitter<AddVehicleState> emit) async {
    final success = await _imagesRepository.deleteImage(state.imageLocation);
    if (success) {
      emit(state.copyWith(imageLocation: ''));
    } else {
      emit(state);
    }
  }

  FutureOr<void> _onImageDiscardedBeforeExiting(
      ImageDiscardedBeforeExiting event, Emitter<AddVehicleState> emit) async {
    final success = await _imagesRepository.deleteImage(state.imageLocation);
    if (success) {
      log('Deleted image, after trying to exit new vehicle screen with already loaded image.');
      emit(state.copyWith(
          imageLocation: '', status: FormzStatus.submissionSuccess));
    } else {
      emit(state);
    }
  }
}
