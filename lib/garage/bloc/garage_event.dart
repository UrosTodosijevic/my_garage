part of 'garage_bloc.dart';

@immutable
abstract class GarageEvent extends Equatable {
  const GarageEvent();

  @override
  List<Object?> get props => [];
}

class GarageSubscriptionRequested extends GarageEvent {
  const GarageSubscriptionRequested();
}
