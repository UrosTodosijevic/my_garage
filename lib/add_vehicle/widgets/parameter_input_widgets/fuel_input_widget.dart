import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/data/api/cars/models/vehicle/vehicle.dart';

import '../../add_vehicle.dart';

class FuelInputWidget extends StatelessWidget {
  const FuelInputWidget({Key? key}) : super(key: key);

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
            errorText: state.fuelInput.invalid
                ? 'Fuel is required field, and can not be empty.'
                : null,
          ),
          hint: const Text('Choose...'),
          value: state.fuelInput.value,
          items: <DropdownMenuItem<Fuel>>[
            for (var option in Fuel.values)
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.stringRepresentation,
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (Fuel? value) {
            if (value != null) {
              context.read<AddVehicleBloc>().add(FuelChanged(fuel: value));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
