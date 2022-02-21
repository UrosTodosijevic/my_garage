import 'package:formz/formz.dart';

enum ModelInputValidationError { invalid }

class ModelInput extends FormzInput<String, ModelInputValidationError> {
  const ModelInput.pure([String value = '']) : super.pure(value);

  const ModelInput.dirty([String value = '']) : super.dirty(value);

  @override
  ModelInputValidationError? validator(String? value) {
    if (value == null) return ModelInputValidationError.invalid;
    if (value.isEmpty) return ModelInputValidationError.invalid;
    return value.length <= 20 ? null : ModelInputValidationError.invalid;
  }
}
