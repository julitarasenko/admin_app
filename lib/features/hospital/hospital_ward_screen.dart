import 'package:admin_app/widgets/button_widget.dart';
import 'package:admin_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class HospitalWardScreen extends StatefulWidget {
  @override
  _HospitalWardScreenState createState() => _HospitalWardScreenState();
}

class _HospitalWardScreenState extends State<HospitalWardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileWidget(),
              ButtonWidget(
                text: 'Szpitalny Oddział Ratunkowy',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
              ButtonWidget(
                text: 'Oddział Gruźlicy, Chorób Płuc i Alergologii III',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
              ButtonWidget(
                text: 'Oddział Onkologii Klinicznej i Chemioterapii',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
              ButtonWidget(
                text: 'Oddział Gruźlicy i Chorób Płuc I',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
              ButtonWidget(
                text: 'Oddział Chirurgii Urazowo – Ortopedycznej V',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
              ButtonWidget(
                text: 'Klinika Chirurgii Klatki Piersiowej',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
