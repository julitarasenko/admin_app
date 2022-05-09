import 'package:admin_app/features/hospital/hospital_screen.dart';
import 'package:admin_app/features/hospital_ward/calendar/calendar.dart';
import 'package:admin_app/features/reservation/reservations_screen.dart';
import 'package:admin_app/features/sick_leave/screens/sick_leave_screen.dart';
import 'package:flutter/material.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child = Text(
      'Error',
    );
    if (tabItem == "Page1")
      child = HospitalScreen();
    else if (tabItem == "Page2")
      child = ReservationScreen();
    else if (tabItem == "Page3")
      child = SickLeaveScreen();
    else if (tabItem == "Page4")
      child = Calendar();
    else if (tabItem == "Page5")
      child = Text(
        'Index 4: Profil',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      );

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => child,
        );
      },
    );
  }
}
