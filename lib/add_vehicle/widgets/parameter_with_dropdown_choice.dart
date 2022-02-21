import 'package:flutter/material.dart';

class ParameterWithDropdownChoice extends StatelessWidget {
  const ParameterWithDropdownChoice({
    Key? key,
    required this.text,
    required this.hint,
    this.isRequired = false,
    required this.inputWidget,
  }) : super(key: key);

  final String text;
  final String hint;
  final bool isRequired;
  final Widget inputWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        !isRequired
            ? Text(text)
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text),
                  const Text(
                    '(required)',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
        const SizedBox(height: 6.0),
        /*DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 2.0),
            ),
            // contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          hint: Text(hint),
          items: <DropdownMenuItem<T>>[
            for (var option in listOfOptions)
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.name,
                ),
              ),
          ],
          onChanged: (T? newNumberOfDoors) {
            print('Kliknuo sam na ${newNumberOfDoors!.name}');
          },
          validator: (T? value) {
            if (value == null) return 'Field can not be empty.';
            return null;
          },
        ),*/
        inputWidget,
        const SizedBox(height: 16.0),
      ],
    );
  }
}
