import 'package:flutter/material.dart';

class UnitDoctorWidget extends StatelessWidget {
  final String name;
  final String speciality;
  final AssetImage image;

  UnitDoctorWidget({
    required this.name,
    required this.speciality,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 28,
          height: 28,
          margin: EdgeInsets.only(top: 8, left: 15, bottom: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: image,
            ),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Color(0xff263139),
                  fontSize: 15,
                  fontFamily: "Circe",
                  height: 1.2,
                ),
              ),
              Text(
                speciality,
                style: TextStyle(
                  color: Color(0xff263139),
                  fontSize: 12,
                  fontFamily: "Circe",
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
