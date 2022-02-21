import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/data/api/cars/models/vehicle/vehicle.dart';

import '../../add_vehicle.dart';

class DriveTypeInputWidget extends StatelessWidget {
  const DriveTypeInputWidget({Key? key}) : super(key: key);

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
            errorText: state.driveTypeInput.invalid
                ? 'Drive type is required field, and can not be empty.'
                : null,
          ),
          value: state.driveTypeInput.value,
          hint: const Text('Choose...'),
          items: <DropdownMenuItem<DriveType>>[
            for (var option in DriveType.values)
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.stringRepresentation,
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (DriveType? value) {
            if (value != null) {
              context
                  .read<AddVehicleBloc>()
                  .add(DriveTypeChanged(driveType: value));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
