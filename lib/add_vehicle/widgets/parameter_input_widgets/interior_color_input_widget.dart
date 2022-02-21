import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/data/api/cars/models/vehicle/vehicle.dart';

import '../../add_vehicle.dart';

class InteriorColorInputWidget extends StatelessWidget {
  const InteriorColorInputWidget({Key? key}) : super(key: key);

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
            errorText: state.interiorColorInput.invalid
                ? 'Interior color is required field, and can not be empty.'
                : null,
          ),
          hint: const Text('Choose...'),
          value: state.interiorColorInput.value,
          items: <DropdownMenuItem<InteriorColor>>[
            for (var option in InteriorColor.values)
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.stringRepresentation,
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (InteriorColor? value) {
            if (value != null) {
              context
                  .read<AddVehicleBloc>()
                  .add(InteriorColorChanged(interiorColor: value));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
