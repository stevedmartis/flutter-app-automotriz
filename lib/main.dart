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
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:io';

import 'screen/welcome/welcome_screen.dart';

void main() {
  runApp(TrinoApp());
}

class TrinoApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _TrinoAppState createState() => _TrinoAppState();
}

class _TrinoAppState extends State<TrinoApp> {
  final FirebaseMessaging _fcm = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    initAditionalConfig();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrinoLink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/welcome',
      home: HomeScreen(title: 'TrinoLink'),
      routes: {
        '/welcome': (context) => WelcomeScreen(),
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

  Future<void> initAditionalConfig() async {
    if (!mounted) return;

    if (Platform.isIOS) {
      print('estoy en ios');
      _fcm.requestNotificationPermissions(
          const IosNotificationSettings(
              sound: true, badge: true, alert: true, provisional: true));
      _fcm.onIosSettingsRegistered
          .listen((IosNotificationSettings settings) {
        print("Settings registered: $settings");
      });
    }

    _fcm.configure(
      onBackgroundMessage: _onBackgroundMessage,
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
    );
  }


}

Future<dynamic> _onBackgroundMessage(Map<String, dynamic> message) async {
  debugPrint('On background message $message');
  return Future<void>.value();
}