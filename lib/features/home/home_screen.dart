import 'package:admin_app/features/hospital/hospital_screen.dart';
import 'package:admin_app/features/hospital_ward/calendar/calendar.dart';
import 'package:admin_app/features/reservation/reservations_screen.dart';
import 'package:admin_app/features/profile/sick_leave/screens/sick_leave_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 4;

  final List _children = [
    HospitalScreen(),
    //ReservationDoctorScreen(),
    ReservationScreen(),
    SickLeaveScreen(),
    Calendar(),
     /* Text(
      'Index 3: Karta zdrowia',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),*/
    Text(
      'Index 4: Profil',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business_outlined),
            label: 'Szpital',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert_outlined),
            label: 'Rezerwacje',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Czat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: 'Karta zdrowia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profil',
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.grey[900],
      ),
    );
  }
}
