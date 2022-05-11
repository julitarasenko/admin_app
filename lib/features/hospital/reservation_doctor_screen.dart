import 'package:admin_app/features/hospital_ward/widget/text_field.dart';
import 'package:admin_app/widgets/button_widget.dart';
import 'package:admin_app/widgets/doctor_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReservationDoctorScreen extends StatefulWidget {
  @override
  _ReservationDoctorScreenState createState() =>
      _ReservationDoctorScreenState();
}

class _ReservationDoctorScreenState extends State<ReservationDoctorScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
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
            padding: EdgeInsets.only(top: 10.0, left: 60.0, right: 10.0),
            child: DoctorWidget(
              name: "mgr Grażyna Małek",
              speciality: "specjalizacja kardiochirurgia",
              image: AssetImage('assets/images/doctor.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 60.0, right: 10.0),
            child: DoctorWidget(
              name: "mgr Grażyna Małek",
              speciality: "specjalizacja kardiochirurgia",
              image: AssetImage('assets/images/doctor.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 60.0, right: 10.0),
            child: DoctorWidget(
              name: "mgr Grażyna Małek",
              speciality: "specjalizacja kardiochirurgia",
              image: AssetImage('assets/images/doctor.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 60.0, right: 10.0),
            child: DoctorWidget(
              name: "mgr Grażyna Małek",
              speciality: "specjalizacja kardiochirurgia",
              image: AssetImage('assets/images/doctor.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 60.0, right: 10.0),
            child: DoctorWidget(
              name: "mgr Grażyna Małek",
              speciality: "specjalizacja kardiochirurgia",
              image: AssetImage('assets/images/doctor.png'),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          ButtonWidget(
            text: 'WYBRAĆ LIEKARZA',
            colorText: Color(0xFF263139),
            colorButton: Color(0xFFFEFEFE),
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/sign-up',
              ModalRoute.withName('/login'),
            ),
          ),
          ButtonWidget(
            text: 'POMIJĄĆ',
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
    );
  }
}
