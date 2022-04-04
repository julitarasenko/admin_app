import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalWardScreen extends StatefulWidget {
  @override
  _HospitalWardScreenState createState() => _HospitalWardScreenState();
}

class _HospitalWardScreenState extends State<HospitalWardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 50.0,
              left: 50.0,
              right: 50.0,
            ),
            child: Text(
              "Szukać",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xff263139),
                fontSize: 24,
                fontFamily: "Manrope",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
