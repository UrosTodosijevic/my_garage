import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/add_vehicle/add_vehicle.dart';

class KmsDrivenInputWidget extends StatelessWidget {
  const KmsDrivenInputWidget({Key? key /*, required this.focusNode*/
      })
      : super(key: key);

  // final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddVehicleBloc, AddVehicleState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.kmsDrivenInput.value,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          inputFormatters: <TextInputFormatter>[
            LengthLimitingTextInputFormatter(7),
            FilteringTextInputFormatter.digitsOnly,
          ],
          // focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 2.0),
            ),
            // hintText: 'Km driven...',
            errorMaxLines: 5,
            errorText: state.kmsDrivenInput.invalid
                ? '''Kms driven is required field, and can not be empty. Allowed values are between 0 and 1500000 km.'''
                : null,
          ),
          onChanged: (value) {
            context
                .read<AddVehicleBloc>()
                .add(KmsDrivenChanged(kmsDriven: value));
          },
        );
      },
    );
  }
}
