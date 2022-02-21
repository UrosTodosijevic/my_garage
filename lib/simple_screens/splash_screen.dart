import 'dart:async';

import 'package:flutter/material.dart';

import '../garage/garage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushAndRemoveUntil(
          GaragePage.route(),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    /*final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;*/

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 140.0),
            Image.asset(
              'assets/images/logo.png',
              height: /*400.0*/340.0,
              width: /*342*/290.0,
            ),
            const Spacer(),
            const Text(
              'Uros Todosijevic',
              style: TextStyle(
                color: Color(0xff295389),
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
