import 'package:admin_app/features/hospital/hospital_ward_screen.dart';
import 'package:admin_app/features/hospital_ward/widget/text_field.dart';
import 'package:admin_app/widgets/hospital_widget.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/features/hospital/get_doctor.dart';
import 'package:admin_app/features/hospital/get_hospital.dart';

import 'hospital_ward_screen.dart';

class HospitalScreen extends StatefulWidget {
  @override
  _HospitalScreenState createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0, left: 50.0, right: 50.0),
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
          TextFieldTemplate(
              hintText: '',
              height: 2,
              colorBorder: Colors.white,
              colorInput: Colors.white70,
              colorText: Colors.black,
              marginVertical: 10,
              marginHorizontal: 40),
          Container(
            padding: EdgeInsets.only(
                top: 10.0, left: 50.0, right: 50.0, bottom: 10.0),
            child: Text(
              "Ostatnie",
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
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 35),
                HospitalWidget(
                  image: AssetImage('assets/images/doctor5.jpg'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor5.jpg'),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => HospitalWardScreen(
                          text: "mgr Grażyna Małek",
                          text2: "specjalizacja kardiochirurgia"))),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/doctor5.jpg'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor5.jpg'),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => HospitalWardScreen(
                          text: "mgr Grażyna Małek",
                          text2: "specjalizacja kardiochirurgia"))),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/doctor5.jpg'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor5.jpg'),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => HospitalWardScreen(
                          text: "mgr Grażyna Małek",
                          text2: "specjalizacja kardiochirurgia"))),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/doctor5.jpg'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor5.jpg'),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => HospitalWardScreen(
                          text: "mgr Grażyna Małek",
                          text2: "specjalizacja kardiochirurgia"))),
                ),
                SizedBox(width: 35),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 20.0, bottom: 10.0, left: 50.0, right: 50.0),
            child: Text(
              "Szpitale",
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
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 35),
                GetHospital(
                  number: 0,
                ),
                SizedBox(width: 50),
                GetHospital(
                  number: 1,
                ),
                SizedBox(width: 50),
                GetHospital(
                  number: 2,
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "Szpital lokalny",
                  speciality: "Legnica",
                  photo: AssetImage('assets/images/hospital.png'),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => HospitalWardScreen(
                          text: "mgr Grażyna Małek",
                          text2: "specjalizacja kardiochirurgia"))),
                ),
                SizedBox(width: 35),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 20.0, bottom: 10.0, left: 50.0, right: 50.0),
            child: Text(
              "Lekarze",
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
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 35),
                GetDoctor(
                  number: 0,
                ),
                SizedBox(width: 50),
                GetDoctor(
                  number: 1,
                ),
                SizedBox(width: 50),
                GetDoctor(
                  number: 2,
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/doctor5.jpg'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor5.jpg'),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => HospitalWardScreen(
                          text: "mgr Grażyna Małek",
                          text2: "specjalizacja kardiochirurgia"))),
                ),
                SizedBox(width: 35),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
