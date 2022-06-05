import 'package:admin_app/widgets/button_widget.dart';
import 'package:admin_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/features/about_unit/about_unit.dart';

class HospitalWardScreen extends StatefulWidget {
  final String text;
  final String text2;
  HospitalWardScreen({
    required this.text,
    required this.text2,
  });
  @override
  _HospitalWardScreenState createState() => _HospitalWardScreenState();
}

class _HospitalWardScreenState extends State<HospitalWardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Szpitale',
          style: TextStyle(
            color: Color(0xFF263139),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFF263139),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileWidget(name: widget.text, address: widget.text2),
              ButtonWidget(
                text: 'Szpitalny Oddział Ratunkowy',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => AboutUnit())),
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
