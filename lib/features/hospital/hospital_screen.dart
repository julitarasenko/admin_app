import 'package:admin_app/widgets/hospital_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalScreen extends StatefulWidget {
  @override
  _HospitalScreenState createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

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
          Container(
            padding: EdgeInsets.only(
                top: 20.0, left: 50.0, right: 50.0, bottom: 10.0),
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
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
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
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
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
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
                ),
                SizedBox(width: 50),
                HospitalWidget(
                  image: AssetImage('assets/images/hospital.png'),
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  photo: AssetImage('assets/images/doctor.png'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/hospital_ward'),
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
