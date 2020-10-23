import 'package:flutter/material.dart';
import 'package:trinoapp/screen/action/action_screen.dart';
import 'package:trinoapp/screen/emergency/emergency_screen.dart';
import 'package:trinoapp/screen/home_screen.dart';
import 'package:trinoapp/screen/login/login_screen.dart';
import 'package:trinoapp/screen/scanner/alertdetail_screen.dart';
import 'package:trinoapp/screen/scanner/levels_screen.dart';
import 'package:trinoapp/screen/scanner/maintancehistory_screen.dart';
import 'package:trinoapp/screen/scanner/maintenanceschedule_screen.dart';
import 'package:trinoapp/screen/scanner/notification_screeen.dart';
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
      initialRoute: '/login',
      home: HomeScreen(title: 'TrinoLink'),
      routes: {
        '/login': (context) => LoginScreen(),
        '/position': (context) => LocationScreen(),
        '/scanner': (context) => ScannerScreen(),
        '/action': (context) => ActionScreen(),
        '/emergency': (context) => EmergencyScreen(),
        '/scanner/levels': (context) => LevelScreen(),
        '/scanner/notification': (context) => NotificationScreen(),
        '/scanner/maintenanceHistory': (context) => HistoryMaintanenceScreen(),
        '/scanner/maintenanceSchedule': (context) => MaintenanceScheduleScreen(),
        '/scanner/detailAlert': (context) => AlertDetailScreen(),
        '/home': (context) => HomeScreen(title: 'TrinoLink'),
      },
    );
  }
}