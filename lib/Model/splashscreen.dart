import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'main');
    });
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: SpinKitCubeGrid(
              color: Colors.black,
              size: 100.0,
            ),
          ),
          SizedBox(
            height: 300,
          ),
          Text(
            'YOGESH NAROLA',
            style: TextStyle(fontSize: 22, letterSpacing: 5),
          ),
          Text(
            'RESUME',
            style: TextStyle(fontSize: 15, letterSpacing: 2),
          ),
        ],
      ),
    );
  }
}
