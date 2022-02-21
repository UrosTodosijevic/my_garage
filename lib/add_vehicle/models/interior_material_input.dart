import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum InteriorMaterialInputValidationError { invalid }

class InteriorMaterialInput extends FormzInput<InteriorMaterial?,
    InteriorMaterialInputValidationError> {
  const InteriorMaterialInput.pure([InteriorMaterial? value])
      : super.pure(value);

  const InteriorMaterialInput.dirty(InteriorMaterial? value)
      : super.dirty(value);

  @override
  InteriorMaterialInputValidationError? validator(InteriorMaterial? value) {
    return value != null ? null : InteriorMaterialInputValidationError.invalid;
  }
}
