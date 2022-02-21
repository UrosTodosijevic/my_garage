import 'package:flutter/material.dart';

class CarCardParameterRepresentation extends StatelessWidget {
  const CarCardParameterRepresentation({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.value,
  }) : super(key: key);

  final String imagePath;
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 1.0),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 24.0,
            width: 24.0,
            fit: BoxFit.cover,
            errorBuilder: (context, _, __) => const SizedBox(
              height: 24.0,
              width: 24.0,
            ),
          ),
          const SizedBox(width: 4.0),
          Text(name),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
