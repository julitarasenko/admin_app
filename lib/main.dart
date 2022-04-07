import 'package:admin_app/features/home/home_screen.dart';
import 'package:admin_app/features/hospital/hospital_ward_screen.dart';
import 'package:admin_app/features/login/screens/login_screen.dart';
import 'package:admin_app/features/login/screens/signup_screen.dart';
import 'package:admin_app/features/reservation/reservations_screen.dart';
import 'package:admin_app/features/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
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
        '/hospital_ward': (context) => HospitalWardScreen(),
      },
    );
  }
}
