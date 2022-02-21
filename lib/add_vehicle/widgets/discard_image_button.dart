import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/add_vehicle/add_vehicle.dart';

class DiscardImageButton extends StatelessWidget {
  const DiscardImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.cancel_outlined,
        color: Colors.red,
      ),
      onPressed: () {
        context.read<AddVehicleBloc>().add(const ImageDiscarded());
      },
    );
  }
}
