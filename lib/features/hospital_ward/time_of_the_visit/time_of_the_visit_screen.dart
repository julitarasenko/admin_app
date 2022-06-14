import 'package:flutter/material.dart';
import 'package:admin_app/features/hospital_ward/widget/text_field.dart';
import 'package:admin_app/features/hospital_ward/widget/time_of_visit.dart';
import 'package:admin_app/widgets/button_widget.dart';

class VisitTimeScreen extends StatefulWidget {
  final int branchid;
  final int patientid;
  String date="";
  String date2="";

  VisitTimeScreen(
      {required this.branchid,
        required this.patientid,
        required this.date,
        required this.date2,
      });
  @override
  _VisitTimeScreenState createState() => _VisitTimeScreenState();
}

class _VisitTimeScreenState extends State<VisitTimeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 100),
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
                  OneTimeOfVisit(left: '8:00', right: '8:30', onPressed: () => {widget.date='8:00',widget.date2='8:30'}),
                  OneTimeOfVisit(
                      left: '10:15', right: '10:45', onPressed: () =>{widget.date='10:15',widget.date2='10:45'}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OneTimeOfVisit(
                      left: '12:00', right: '12:30', onPressed: () =>{widget.date='12:00',widget.date2='12:30'}),
                  OneTimeOfVisit(
                      left: '14:00', right: '14:30', onPressed: () =>{widget.date='14:00',widget.date2='14:30'}),
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
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
