import 'package:flutter/material.dart';
import 'package:my_garage/vehicle/vehicle.dart';

class VehicleDetailsTable extends StatelessWidget {
  const VehicleDetailsTable({
    Key? key,
    required this.name,
    required this.content,
  }) : super(key: key);

  final String name;
  final List<NameAndValuePair> content;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: /*Colors.white*/ const Color(0xfffcfcfc),
      color: const Color(0xffedf1f8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          children: [
            Text(name),
            const SizedBox(height: 20.0),
            ...[
              for (var i = 0; i < content.length; i++)
                if (i == content.length - 1)
                  TableParameterWithValue(
                    pair: NameAndValuePair(
                      parameter: content[i].parameter,
                      value: content[i].value,
                    ),
                  )
                else ...[
                  TableParameterWithValue(
                    pair: NameAndValuePair(
                      parameter: content[i].parameter,
                      value: content[i].value,
                    ),
                  ),
                  const Divider(),
                ]
            ],
          ],
        ),
      ),
    );
  }
}
