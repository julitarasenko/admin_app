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
      padding: EdgeInsets.only(
        top: 13,
        bottom: 13,
        right: 22,
        left: 12,
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
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              icon: Icon(
                Icons.download_rounded,
                size: 36,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  sickLeaveDescription,
                  style: TextStyle(
                    color: Colors.black,
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
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Circe',
                    fontWeight: FontWeight.w500,
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