import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:my_garage/domain/repositories/cars/cars_repository.dart';

import '../../data/api/cars/models/vehicle/car.dart';

part 'garage_event.dart';

part 'garage_state.dart';

class GarageBloc extends Bloc<GarageEvent, GarageState> {
  GarageBloc({required CarsRepository carsRepository})
      : _carsRepository = carsRepository,
        super(const GarageState()) {
    on<GarageSubscriptionRequested>(_onSubscriptionRequested);
  }

  final CarsRepository _carsRepository;

  Future<void> _onSubscriptionRequested(
    GarageSubscriptionRequested event,
    Emitter<GarageState> emit,
  ) async {
    emit(state.copyWith(status: GarageStatus.loading));

    await emit.forEach<List<Car>>(
      _carsRepository.getCars(),
      onData: (cars) => state.copyWith(
        status: GarageStatus.success,
        cars: cars,
      ),
      onError: (_, __) => state.copyWith(
        status: GarageStatus.failure,
      ),
    );
  }
}
