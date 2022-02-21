part of 'vehicle_bloc.dart';

@immutable
abstract class VehicleEvent extends Equatable {
  const VehicleEvent();

  @override
  List<Object?> get props => [];
}

class VehicleDeleted extends VehicleEvent {
  const VehicleDeleted();
}
