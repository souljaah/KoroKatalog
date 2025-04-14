import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'onboarding_screen.dart';

void main() async {
  runApp(ShupApp());
}

class ShupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KoroKatalog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Roboto',
      ),
      home: OnboardingScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/wardrobe': (context) => WardrobePage(),
        '/instrument': (context) => InstrumentPage(),
        '/accessory': (context) => AccessoryPage(),
      },
    );
  }
}
