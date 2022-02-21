import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../add_vehicle.dart';

class AirConditioningInputWidget extends StatelessWidget {
  const AirConditioningInputWidget({Key? key}) : super(key: key);

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
            errorText: state.airConditioningInput.invalid ? '' : null,
          ),
          hint: const Text('Choose...'),
          items: <DropdownMenuItem<bool>>[
            for (var option in const <bool>[true, false])
              DropdownMenuItem(
                value: option,
                child: Text(
                  option == true ? 'True' : 'False',
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (bool? value) {
            if (value != null) {
              context
                  .read<AddVehicleBloc>()
                  .add(AirConditioningChanged(airConditioning: value));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
