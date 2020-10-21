import 'package:flutter/material.dart';
import 'package:trinoapp/screen/action/action_screen.dart';
import 'package:trinoapp/screen/emergency/emergency_screen.dart';
import 'package:trinoapp/screen/home_screen.dart';
import 'package:trinoapp/screen/scanner/scanner_screen.dart';
import 'package:trinoapp/screen/selection/location-screen.dart';

void main() {
  runApp(TrinoApp());
}

class TrinoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrinoLink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(title: 'TrinoLink'),
      routes: {
        '/position': (context) => LocationScreen(),
        '/scanner': (context) => ScannerScreen(),
        '/action': (context) => ActionScreen(),
        '/emergency': (context) => EmergencyScreen(),
      },
    );
  }
}