part of 'vehicle_bloc.dart';

// part 'vehicle_state.freezed.dart';

enum VehicleStatus {
  initial,
  // loading,
  deleting,
  success,
  failure,
}

class VehicleState extends Equatable {
  const VehicleState({
    this.status = VehicleStatus.initial,
    required this.car,
  });

  final VehicleStatus status;
  final Car car;

  VehicleState copyWith({
    VehicleStatus? status,
    Car? car,
  }) {
    return VehicleState(
      status: status ?? this.status,
      car: car ?? this.car,
    );
  }

  @override
  List<Object?> get props => [status, car];
}
