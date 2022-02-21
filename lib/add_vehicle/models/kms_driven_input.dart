import 'package:formz/formz.dart';

enum KmsDrivenInputValidationError { invalid }

class KmsDrivenInput extends FormzInput<String, KmsDrivenInputValidationError> {
  const KmsDrivenInput.pure([String value = '']) : super.pure(value);

  const KmsDrivenInput.dirty([String value = '']) : super.dirty(value);

  @override
  KmsDrivenInputValidationError? validator(String? value) {
    if (value == null) return KmsDrivenInputValidationError.invalid;
    if (value.isEmpty) return KmsDrivenInputValidationError.invalid;

    var parsedValue = int.tryParse(value);
    if (parsedValue == null) return KmsDrivenInputValidationError.invalid;
    if (parsedValue < 0 || parsedValue > 1500000) {
      return KmsDrivenInputValidationError.invalid;
    }
    return null;
  }
}
