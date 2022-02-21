import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_garage/add_vehicle/add_vehicle.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddVehicleBloc, AddVehicleState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 20.0),
            if (state.imageLocation.isNotEmpty) ...[
              Text(state.imageLocation, overflow: TextOverflow.ellipsis),
              const DiscardImageButton(),
              const SizedBox(height: 8.0),
            ],
            TextButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: const BorderSide(width: 1.0, color: Colors.black38),
                ),
                onPrimary: const Color(0xff295389),
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 16.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.add, size: 28.0),
                  SizedBox(width: 8.0),
                  Text(
                    'Add image',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              onPressed: () async {
                var picker = ImagePicker();
                final image =
                    await picker.pickImage(source: ImageSource.gallery);
                if (image != null) {
                  context.read<AddVehicleBloc>().add(ImagePicked(image: image));
                }
              },
            ),
          ],
        );
      },
    );
  }
}
