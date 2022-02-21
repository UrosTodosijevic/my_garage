import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum InteriorColorInputValidationError { invalid }

class InteriorColorInput
    extends FormzInput<InteriorColor?, InteriorColorInputValidationError> {
  const InteriorColorInput.pure([InteriorColor? value]) : super.pure(value);

  const InteriorColorInput.dirty(InteriorColor? value) : super.dirty(value);

  @override
  InteriorColorInputValidationError? validator(InteriorColor? value) {
    return value != null ? null : InteriorColorInputValidationError.invalid;
  }
}
