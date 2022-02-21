import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/add_vehicle_bloc.dart';

class YearInputWidget extends StatelessWidget {
  const YearInputWidget({
    Key? key,
    required this.focusNode,
  }) : super(key: key);

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddVehicleBloc, AddVehicleState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.yearInput.value,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          inputFormatters: <TextInputFormatter>[
            LengthLimitingTextInputFormatter(4),
            FilteringTextInputFormatter.digitsOnly,
          ],
          focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 2.0),
            ),
            // hintText: 'Year...',
            errorMaxLines: 5,
            errorText: state.yearInput.invalid
                ? '''Year is required field, and can not be empty. Allowed values are between 1970 and current year.'''
                : null,
          ),
          onChanged: (value) {
            context.read<AddVehicleBloc>().add(YearChanged(year: value));
          },
        );
      },
    );
  }
}
