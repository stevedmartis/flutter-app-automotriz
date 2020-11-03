import 'package:flutter/material.dart';
import 'package:trinoapp/screen/home_screen.dart';
import 'package:trinoapp/screen/screens.dart';
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
      initialRoute: ScreensEnum.WELCOME.routeName,
      home: HomeScreen(title: 'TrinoLink'),
      routes: Screens.buildRoutes(context),
    );
  }

  Future<void> initAditionalConfig() async {
    if (!mounted) return;

    if (Platform.isIOS) {
      _fcm.requestNotificationPermissions(const IosNotificationSettings(sound: true, badge: true, alert: true, provisional: true));
      _fcm.onIosSettingsRegistered.listen((IosNotificationSettings settings) {
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
