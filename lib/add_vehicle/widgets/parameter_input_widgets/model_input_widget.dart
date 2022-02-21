import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/add_vehicle/add_vehicle.dart';

class ModelInputWidget extends StatelessWidget {
  const ModelInputWidget({Key? key /*, required this.focusNode*/
      })
      : super(key: key);

  // final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddVehicleBloc, AddVehicleState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.modelInput.value,
          // textAlign: TextAlign.center,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          inputFormatters: <TextInputFormatter>[
            LengthLimitingTextInputFormatter(20),
          ],
          // focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 2.0),
            ),
            errorMaxLines: 2,
            errorText: state.modelInput.invalid
                ? 'Model is required field, and can not be empty.'
                : null,
          ),
          onChanged: (value) {
            context.read<AddVehicleBloc>().add(ModelChanged(model: value));
          },
        );
      },
    );
  }
}
