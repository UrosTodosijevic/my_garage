import 'package:formz/formz.dart';

enum YearInputValidationError { invalid }

class YearInput extends FormzInput<String, YearInputValidationError> {
  const YearInput.pure([String value = '']) : super.pure(value);

  const YearInput.dirty([String value = '']) : super.dirty(value);

  @override
  YearInputValidationError? validator(String? value) {
    if (value == null) return YearInputValidationError.invalid;
    if (value.isEmpty) return YearInputValidationError.invalid;

    var parsedValue = int.tryParse(value);
    if (parsedValue == null) return YearInputValidationError.invalid;
    if (parsedValue < 1970 || parsedValue > DateTime.now().year) {
      return YearInputValidationError.invalid;
    }
    return null;
  }
}
