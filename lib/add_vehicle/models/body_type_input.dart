import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum BodyTypeInputValidationError { invalid }

class BodyTypeInput extends FormzInput<BodyType?, BodyTypeInputValidationError> {
  const BodyTypeInput.pure([BodyType? value]) : super.pure(value);

  const BodyTypeInput.dirty(BodyType? value) : super.dirty(value);

  @override
  BodyTypeInputValidationError? validator(BodyType? value) {
    return value != null ? null : BodyTypeInputValidationError.invalid;
  }
}
