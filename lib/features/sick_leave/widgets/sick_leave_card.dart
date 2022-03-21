import 'package:flutter/material.dart';

class SickLeaveCard extends StatelessWidget {
  final String sickLeaveDescription;
  final String doctor;

  SickLeaveCard({
    required this.sickLeaveDescription,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 300,
        maxHeight: 85,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        color: Color(0xFFFEFEFE),
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                sickLeaveDescription,
                style: TextStyle(
                  color: Color(0xFF263139),
                  fontSize: 13,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                doctor,
                style: TextStyle(
                  color: Color(0xFF263139),
                  fontSize: 13,
                  fontFamily: 'Circe',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

