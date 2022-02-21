import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum DriveTypeInputValidationError { invalid }

class DriveTypeInput extends FormzInput<DriveType?, DriveTypeInputValidationError> {
  const DriveTypeInput.pure([DriveType? value]) : super.pure(value);

  const DriveTypeInput.dirty(DriveType? value) : super.dirty(value);

  @override
  DriveTypeInputValidationError? validator(DriveType? value) {
    return value != null ? null : DriveTypeInputValidationError.invalid;
  }
}
