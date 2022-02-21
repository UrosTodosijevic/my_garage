import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../add_vehicle.dart';

class NumberOfSeatsInputWidget extends StatelessWidget {
  const NumberOfSeatsInputWidget({Key? key}) : super(key: key);

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
            errorText: state.numberOfSeatsInput.invalid
                ? 'Number of seats is required field, and can not be empty.'
                : null,
          ),
          hint: const Text('Choose...'),
          value: int.tryParse(state.numberOfSeatsInput.value),
          items: <DropdownMenuItem<int>>[
            for (var option in const [2, 3, 4, 5, 6, 7, 8, 9])
              DropdownMenuItem(
                value: option,
                child: Text(
                  option.toString(),
                ),
              ),
          ],
          // focusNode: focusNode,
          onChanged: (int? value) {
            if (value != null) {
              context
                  .read<AddVehicleBloc>()
                  .add(NumberOfSeatsChanged(numberOfSeats: value.toString()));
            }
          },
          // textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
