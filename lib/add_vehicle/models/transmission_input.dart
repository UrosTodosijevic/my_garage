import 'package:formz/formz.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

enum TransmissionInputValidationError { invalid }

class TransmissionInput
    extends FormzInput<Transmission?, TransmissionInputValidationError> {
  const TransmissionInput.pure([Transmission? value]) : super.pure(value);

  const TransmissionInput.dirty(Transmission? value) : super.dirty(value);

  @override
  TransmissionInputValidationError? validator(Transmission? value) {
    return value != null ? null : TransmissionInputValidationError.invalid;
  }
}
