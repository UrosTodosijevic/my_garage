import 'package:flutter/material.dart';

import '../vehicle.dart';

class TableParameterWithValue extends StatelessWidget {
  const TableParameterWithValue({
    Key? key,
    required this.pair,
  }) : super(key: key);

  final NameAndValuePair pair;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(pair.parameter),
        Text(
          pair.value,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
