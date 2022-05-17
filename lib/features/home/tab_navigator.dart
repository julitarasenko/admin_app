import 'package:admin_app/features/hospital/hospital_screen.dart';
import 'package:admin_app/features/reservation/reservations_screen.dart';
import 'package:admin_app/features/profile/sick_leave/screens/sick_leave_screen.dart';
import 'package:admin_app/features/health_card/screens/health_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/features/profile/get_profile.dart';

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
      child = HealthCardScreen(); //Calendar();
    else if (tabItem == "Page4")
      child = GetProfile(number: 2);

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
