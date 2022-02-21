import 'package:flutter/material.dart';

class ParameterWithTextInput extends StatelessWidget {
  const ParameterWithTextInput(
      {Key? key, required this.text, required this.inputWidget
      /*required this.controller,
    this.keyboardType,
    this.maxLength,
    this.validator,*/
      })
      : super(key: key);

  final String text;

  // final TextEditingController controller;
  // final TextInputType? keyboardType;
  // final int? maxLength;
  // final FormFieldValidator<String>? validator;
  final Widget inputWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: 6.0),
        /*TextFormField(
          controller: controller,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 2.0),
            ),
            // contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          keyboardType: keyboardType ?? TextInputType.text,
          inputFormatters: <TextInputFormatter>[
            (maxLength != null)
                ? LengthLimitingTextInputFormatter(maxLength)
                : LengthLimitingTextInputFormatter(20),
            if (keyboardType == TextInputType.number)
              FilteringTextInputFormatter.digitsOnly
          ],
          // maxLength: 20,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '$text can not be empty.';
            }
            return null;
          },
        ),*/
        inputWidget,
        const SizedBox(height: 16.0),
      ],
    );
  }
}
