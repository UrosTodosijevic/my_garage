import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/data/api/cars/models/vehicle/vehicle.dart';

import '../../add_vehicle.dart';

class BodyTypeInputWidget extends StatelessWidget {
  const BodyTypeInputWidget({Key? key}) : super(key: key);

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
            errorText: state.bodyTypeInput.invalid
                ? 'Body type is required field, and can not be empty.'
                : null,
          ),
          value: state.bodyTypeInput.value,
          hint: const Text('Choose...'),
          items: <DropdownMenuItem<BodyType>>[
            for (var option in BodyType.values)
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.stringRepresentation,
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (BodyType? value) {
            if (value != null) {
              context
                  .read<AddVehicleBloc>()
                  .add(BodyTypeChanged(bodyType: value));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
