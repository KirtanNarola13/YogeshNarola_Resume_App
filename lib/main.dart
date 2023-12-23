import 'package:flutter/material.dart';
import 'package:yogesh/Model/splashscreen.dart';

import 'Model/Screens/YogeshNarola/Views/yogeshnarola.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Yogesh Narola',
      routes: {
        '/': (context) => SplashScreen(),
        'main': (context) => YogeshNarola(),
      },
    ),
  );
}
