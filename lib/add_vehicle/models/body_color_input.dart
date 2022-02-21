import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum BodyColorInputValidationError { invalid }

class BodyColorInput extends FormzInput<BodyColor?, BodyColorInputValidationError> {
  const BodyColorInput.pure([BodyColor? value]) : super.pure(value);

  const BodyColorInput.dirty(BodyColor? value) : super.dirty(value);

  @override
  BodyColorInputValidationError? validator(BodyColor? value) {
    return value != null ? null : BodyColorInputValidationError.invalid;
  }
}

