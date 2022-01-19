import 'package:admin_app/features/rezervacje/rezervacje_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State createState() {
    return _MyStatefulWidgetState();
  }
}

class _MyStatefulWidgetState extends State {
  int _currentIndex = 4;
  final List _children = [
    Text(
      'Index 0: Szpital',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    RezervacjeScreen(),
    Text(
      'Index 2: Czat',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 3: Karta zdrowia',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 4: Profil',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
          new BottomNavigationBarItem(
              icon: Icon(Icons.add_business_outlined), label: 'Szpital'),
          new BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_outlined), label: 'Rezerwacji'),
          new BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded), label: 'Czat'),
          new BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined), label: 'Karta zdrowia'),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Profil'),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.grey[900],
      ),
    );
  }
}
