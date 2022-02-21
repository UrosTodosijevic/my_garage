import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:my_garage/domain/repositories/cars/cars_repository.dart';
import 'package:my_garage/domain/repositories/images/images_repository.dart';

import '../../data/api/cars/models/models.dart';

part 'vehicle_event.dart';

part 'vehicle_state.dart';

class VehicleBloc extends Bloc<VehicleEvent, VehicleState> {
  VehicleBloc({
    required CarsRepository carsRepository,
    required ImagesRepository imagesRepository,
    required Car car,
  })  : _carsRepository = carsRepository,
        _imagesRepository = imagesRepository,
        super(VehicleState(car: car)) {
    on<VehicleDeleted>(_onVehicleDeleted);
  }

  final CarsRepository _carsRepository;
  final ImagesRepository _imagesRepository;

  Future<void> _onVehicleDeleted(
    VehicleDeleted event,
    Emitter<VehicleState> emit,
  ) async {
    emit(state.copyWith(status: VehicleStatus.deleting));

    final location = state.car.imageLocation;
    if (location.isNotEmpty) {
      await _imagesRepository.deleteImage(location);
    }
    await _carsRepository.deleteCar(state.car);

    emit(state.copyWith(status: VehicleStatus.success));
  }
}
