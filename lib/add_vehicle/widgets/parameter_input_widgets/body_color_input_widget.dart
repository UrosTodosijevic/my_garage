import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/data/api/cars/models/vehicle/vehicle.dart';

import '../../add_vehicle.dart';

class BodyColorInputWidget extends StatelessWidget {
  const BodyColorInputWidget({Key? key}) : super(key: key);

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
            errorText: state.bodyColorInput.invalid
                ? 'Body color is required field, and can not be empty.'
                : null,
          ),
          value: state.bodyColorInput.value,
          hint: const Text('Choose...'),
          items: <DropdownMenuItem<BodyColor>>[
            for (var option in BodyColor.values)
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.stringRepresentation,
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (BodyColor? value) {
            if (value != null) {
              context
                  .read<AddVehicleBloc>()
                  .add(BodyColorChanged(bodyColor: value));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
