import 'package:flutter/material.dart';
import 'package:trinoapp/screen/register/register_screen.dart';

import 'action/action_screen.dart';
import 'emergency/emergency_screen.dart';
import 'home_screen.dart';
import 'login/login_screen.dart';
import 'scanner/alertdetail_screen.dart';
import 'scanner/levels_screen.dart';
import 'scanner/maintancehistory_screen.dart';
import 'scanner/maintenanceschedule_screen.dart';
import 'scanner/notification_screeen.dart';
import 'scanner/scanner_screen.dart';
import 'selection/location-screen.dart';
import 'welcome/welcome_screen.dart';

enum ScreensEnum {
  HOME,
  LOGIN,
  REGISTER,
  POSITION,
  SCANNER,
  ACTION,
  EMERGENCY,
  WELCOME,
  SCANNER_LEVELS,
  SCANNER_NOTIFICATION,
  SCANNER_MAINTENANCEHISTORY,
  SCANNER_MAINTENANCESCHEDULE,
  SCANNER_DETAILALERT
}

extension ScreenEnumExt on ScreensEnum {
  String get name {
    return this.toString();
  }

  //This method only add slash's for backward compatibility.
  String get routeName {
    String oldname = this.toString().toLowerCase().split(".")[1];
    oldname = oldname.replaceAll("_", "/");
    print(oldname);
    return "/" + oldname;
  }
}

class Screens {
  static Map<String, Widget Function(BuildContext)> buildRoutes(BuildContext ctx) {
    Map<String, Widget Function(BuildContext)> maps = new Map<String, Widget Function(BuildContext)>();
    maps = {
      ScreensEnum.WELCOME.routeName: (ctx) => WelcomeScreen(),
      ScreensEnum.LOGIN.routeName: (ctx) => LoginScreen(),
      ScreensEnum.REGISTER.routeName: (ctx) => RegisterScreen(),
      ScreensEnum.POSITION.routeName: (ctx) => LocationScreen(),
      ScreensEnum.SCANNER.routeName: (ctx) => ScannerScreen(),
      ScreensEnum.ACTION.routeName: (ctx) => ActionScreen(),
      ScreensEnum.EMERGENCY.routeName: (ctx) => EmergencyScreen(),
      ScreensEnum.SCANNER_LEVELS.routeName: (ctx) => LevelScreen(),
      ScreensEnum.SCANNER_NOTIFICATION.routeName: (ctx) => NotificationScreen(),
      ScreensEnum.SCANNER_MAINTENANCEHISTORY.routeName: (ctx) => HistoryMaintanenceScreen(),
      ScreensEnum.SCANNER_MAINTENANCESCHEDULE.routeName: (ctx) => MaintenanceScheduleScreen(),
      ScreensEnum.SCANNER_DETAILALERT.routeName: (ctx) => AlertDetailScreen(),
      ScreensEnum.HOME.routeName: (ctx) => HomeScreen(title: 'TrinoLink'),
    };
    return maps;
  }
}
