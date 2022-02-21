import 'package:formz/formz.dart';

enum AirConditioningInputValidationError { invalid }

class AirConditioningInput
    extends FormzInput<bool, AirConditioningInputValidationError> {
  const AirConditioningInput.pure([bool value = false]) : super.pure(value);

  const AirConditioningInput.dirty([bool value = false]) : super.dirty(value);

  void method(){

  }

  @override
  AirConditioningInputValidationError? validator(bool? value) {
    return null;
  }
}
