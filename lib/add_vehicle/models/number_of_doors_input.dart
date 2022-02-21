import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum NumberOfDoorsInputValidationError { invalid }

class NumberOfDoorsInput
    extends FormzInput<NumberOfDoors?, NumberOfDoorsInputValidationError> {
  const NumberOfDoorsInput.pure([NumberOfDoors? value]) : super.pure(value);

  const NumberOfDoorsInput.dirty(NumberOfDoors? value) : super.dirty(value);

  @override
  NumberOfDoorsInputValidationError? validator(NumberOfDoors? value) {
    return value != null ? null : NumberOfDoorsInputValidationError.invalid;
  }
}
