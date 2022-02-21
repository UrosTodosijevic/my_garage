import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum MakerInputValidationError { invalid }

class MakerInput extends FormzInput<Maker?, MakerInputValidationError> {
  const MakerInput.pure([Maker? value]) : super.pure(value);

  const MakerInput.dirty(Maker? value) : super.dirty(value);

  @override
  MakerInputValidationError? validator(Maker? value) {
    return value != null ? null : MakerInputValidationError.invalid;
  }
}
