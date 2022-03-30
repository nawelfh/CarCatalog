import 'package:car_catalog/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import '../shared/Menu_drawer.dart';
import '../screens/contact_screen.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => IntroScreen(),
        '/contact': (context) => ContactScreen()
      },
      initialRoute: '/',
    );
  }
}
