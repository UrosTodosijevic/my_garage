import 'package:flutter/material.dart';

class EmptyListMessage extends StatelessWidget {
  const EmptyListMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'You currently have no Cars.',
            style: TextStyle(
              color: Color(0xff295389),
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Click on Plus button to create new Car.',
            style: TextStyle(
              color: Color(0xff295389),
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
