import 'package:admin_app/features/home/home_screen.dart';
import 'package:admin_app/features/login/screens/login_screen.dart';
import 'package:admin_app/features/login/screens/signup_screen.dart';
import 'package:admin_app/features/reservation/reservations_screen.dart';
import 'package:admin_app/features/start_screen.dart';
import 'package:admin_app/features/profile_main.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/features/sick_leave/screens/sick_leave_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFE5E9EC),
      ),
      home: StartScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/sign-up': (context) => SignupScreen(),
        '/home-screen': (context) => HomeScreen(),
        '/reservation': (context) => ReservationScreen(),
        '/profile_widget': (context) => ProfilWidget(),
        '/Profile_main': (context) => Profile(),
        '/sick_leave_screen': (context) => SickLeaveScreen()
      },
    );
  }
}
