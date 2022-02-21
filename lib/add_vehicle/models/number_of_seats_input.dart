import 'package:formz/formz.dart';

enum NumberOfSeatsInputValidationError { invalid }

class NumberOfSeatsInput
    extends FormzInput<String, NumberOfSeatsInputValidationError> {
  const NumberOfSeatsInput.pure([String value = '']) : super.pure(value);

  const NumberOfSeatsInput.dirty([String value = '']) : super.dirty(value);

  @override
  NumberOfSeatsInputValidationError? validator(String? value) {
    if (value == null) return NumberOfSeatsInputValidationError.invalid;
    if (value.isEmpty) return NumberOfSeatsInputValidationError.invalid;

    var parsedValue = int.tryParse(value);
    if (parsedValue == null) return NumberOfSeatsInputValidationError.invalid;
    if (parsedValue < 2 || parsedValue > 10) {
      return NumberOfSeatsInputValidationError.invalid;
    }
    return null;
  }
}
