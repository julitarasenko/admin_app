import 'package:admin_app/widgets/doctor_widget.dart';
import 'package:flutter/material.dart';

class HospitalWidget extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String speciality;
  final AssetImage photo;
  final VoidCallback onPressed;

  HospitalWidget(
      {required this.image,
      required this.name,
      required this.speciality,
      required this.photo,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: RaisedButton(
        elevation: 0,
        padding: EdgeInsets.all(0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 343,
                height: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0, 10),
                        blurRadius: 20,
                        spreadRadius: -4),
                  ],
                  image: DecorationImage(
                    image: image,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 16.0,
                  bottom: 10.0,
                ),
                child: DoctorWidget(
                  name: name,
                  speciality: speciality,
                  image: photo,
                  onPressed: onPressed,
                ),
              )
            ],
          ),
        ),
        onPressed: onPressed,
        color: Color(0xFFE5E9EC),
      ),
    );
  }
}
