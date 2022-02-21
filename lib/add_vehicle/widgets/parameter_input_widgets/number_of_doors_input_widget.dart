import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/data/api/cars/models/vehicle/vehicle.dart';

import '../../add_vehicle.dart';

class NumberOfDoorsInputWidget extends StatelessWidget {
  const NumberOfDoorsInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddVehicleBloc, AddVehicleState>(
      builder: (context, state) {
        return DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 2.0),
            ),
            errorMaxLines: 2,
            errorText: state.numberOfDoorsInput.invalid
                ? 'Number of doors is required field, and can not be empty.'
                : null,
          ),
          value: state.numberOfDoorsInput.value,
          hint: const Text('Choose...'),
          items: <DropdownMenuItem<NumberOfDoors>>[
            for (var option in NumberOfDoors.values)
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.stringRepresentation,
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (NumberOfDoors? value) {
            if (value != null) {
              context
                  .read<AddVehicleBloc>()
                  .add(NumberOfDoorsChanged(numberOfDoors: value));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
