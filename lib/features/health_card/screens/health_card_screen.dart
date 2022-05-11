import 'package:admin_app/features/health_card/screens/button_widget_health_card.dart';
import 'package:admin_app/features/login/screens/login_screen.dart';
import 'package:admin_app/widgets/vaccine_widget.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:admin_app/features/health_card/screens/health_card.dart';
import 'package:admin_app/core/http_client_get.dart';

class HealthCardScreen extends StatefulWidget {
  @override
  _HealthCardScreenState createState() => _HealthCardScreenState();
}

class _HealthCardScreenState extends State<HealthCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Karta zdrowia',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              HealthCard(
                  name: 'Jan',
                  age: 21,
                  weight: 77,
                  height: 179,
                  lastvisit: '10.12.2021'),
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 8.0),
                child: Text(
                  'Historia Szczepień',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              VaccineWidget(),
              VaccineWidget(),
              ButtonWidgetHealthCard(
                text: 'Więcej',
                colorText: Color(0xFFFEFEFE),
                colorButton: Color(0xFF7DA6CB),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 8.0),
                child: Text(
                  'Przebyte choroby',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              GetDisease(
                number: 0,
              ),
              GetDisease(
                number: 1,
              ),
              ButtonWidgetHealthCard(
                text: 'Więcej',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
