part of 'garage_bloc.dart';

enum GarageStatus { initial, loading, success, failure }

class GarageState extends Equatable {
  const GarageState({
    this.status = GarageStatus.initial,
    this.cars = const <Car>[],
  });

  final GarageStatus status;

  final List<Car> cars;

  GarageState copyWith({
    GarageStatus? status,
    List<Car>? cars,
  }) {
    return GarageState(
      status: status ?? this.status,
      cars: cars ?? this.cars,
    );
  }

  @override
  List<Object?> get props => [status, cars];
}
