import 'package:admin_app/features/hospital/hospital_screen.dart';
import 'package:admin_app/features/reservation/reservations_screen.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/features/hospital_ward/widget/text_field.dart';
import 'package:admin_app/features/hospital_ward/widget/time_of_visit.dart';
import 'package:admin_app/widgets/button_widget.dart';

class VisitTimeScreen extends StatefulWidget {
  @override
  _VisitTimeScreenState createState() => _VisitTimeScreenState();
}

class _VisitTimeScreenState extends State<VisitTimeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Zmień/wybierz liekarza',
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
        padding: EdgeInsets.symmetric(vertical: 75),
        children: [
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 25.0, right: 125.0),
                child: Text(
                  'Wolne terminy',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OneTimeOfVisit(left: '8:00', right: '8:30', onPressed: () {}),
                  OneTimeOfVisit(
                      left: '10:15', right: '10:45', onPressed: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OneTimeOfVisit(
                      left: '12:00', right: '12:30', onPressed: () {}),
                  OneTimeOfVisit(
                      left: '14:00', right: '14:30', onPressed: () {}),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0, top: 12.0, right: 140.0),
                child: Text(
                  'Informacja dla lekarza:',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              TextFieldTemplate(
                  hintText: '',
                  height: 3,
                  colorBorder: Colors.white,
                  colorInput: Colors.white70,
                  colorText: Colors.black,
                  marginVertical: 10,
                  marginHorizontal: 55),
              SizedBox(height: 15),
              ButtonWidget(
                text: 'ZAREZERWUJ',
                colorText: Color(0xFFFEFEFE),
                colorButton: Color(0xFF4DAF8C),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HospitalScreen(),
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
