import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum SteeringWheelSideInputValidationError { invalid }

class SteeringWheelSideInput extends FormzInput<SteeringWheelSide?,
    SteeringWheelSideInputValidationError> {
  const SteeringWheelSideInput.pure([SteeringWheelSide? value])
      : super.pure(value);

  const SteeringWheelSideInput.dirty(SteeringWheelSide? value)
      : super.dirty(value);

  @override
  SteeringWheelSideInputValidationError? validator(SteeringWheelSide? value) {
    return value != null ? null : SteeringWheelSideInputValidationError.invalid;
  }
}
