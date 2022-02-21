import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum FuelInputValidationError { invalid }

class FuelInput extends FormzInput<Fuel?, FuelInputValidationError> {
  const FuelInput.pure([Fuel? value]) : super.pure(value);

  const FuelInput.dirty(Fuel? value) : super.dirty(value);

  @override
  FuelInputValidationError? validator(Fuel? value) {
    return value != null ? null : FuelInputValidationError.invalid;
  }
}
