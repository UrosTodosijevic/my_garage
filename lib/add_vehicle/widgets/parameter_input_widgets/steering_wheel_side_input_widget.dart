import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/data/api/cars/models/vehicle/vehicle.dart';

import '../../add_vehicle.dart';

class SteeringWheelSideInputWidget extends StatelessWidget {
  const SteeringWheelSideInputWidget({Key? key}) : super(key: key);

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
            errorText: state.steeringWheelSideInput.invalid
                ? 'Steering wheel side is required field, and can not be empty.'
                : null,
          ),
          hint: const Text('Choose...'),
          value: state.steeringWheelSideInput.value,
          items: <DropdownMenuItem<SteeringWheelSide>>[
            for (var option in SteeringWheelSide.values)
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.stringRepresentation,
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (SteeringWheelSide? value) {
            if (value != null) {
              context
                  .read<AddVehicleBloc>()
                  .add(SteeringWheelSideChanged(steeringWheelSide: value));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
