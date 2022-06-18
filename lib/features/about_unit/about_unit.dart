import 'package:admin_app/features/about_unit/about_unit_button.dart';
import 'package:admin_app/features/about_unit/info_label_widget.dart';
import 'package:admin_app/features/about_unit/staticmap_widget.dart';
import 'package:admin_app/features/about_unit/unit_doctor_widget.dart';
import 'package:admin_app/features/hospital_ward/calendar/calendar.dart';
import 'package:admin_app/features/login/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:admin_app/features/hospital_ward/calendar/calendar.dart';
import 'package:admin_app/features/hospital/get_doctor_res.dart';

class AboutUnit extends StatefulWidget {
  final int branchid;
  AboutUnit({
    required this.branchid,
  });

  @override
  _AboutUnitState createState() => _AboutUnitState();
}

class _AboutUnitState extends State<AboutUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Oddziały',
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
      body: Align(
        alignment: AlignmentDirectional(0, -0.9),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.05, 0.15),
                  child: Text(
                    'Szpitalny Oddział Rarunkowy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF263139),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InfoLabelWidget(label: 'O oddziale:'),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18, 10, 18, 0),
                  child: Text(
                    'Szpitalny oddział ratunkowy jest komórką organizacyjną szpitala w rozumieniu przepisów o działalności leczniczej, stanowiącą jednostkę systemu, udzielającą świadczeń opieki zdrowotnej osobom w stanie nagłego zagrożenia zdrowotnego, spełniającą wymagania określone w ustawie z dnia 8 września 2006 r. o Państwowym Ratownictwie Medycznym (Dz.U. 2013.757 j.t. z późn. zm.)\n',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF263139),
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                InfoLabelWidget(label: 'Kadra:'),
              GetDoctor(number: 0, number2: widget.branchid),
                GetDoctor(number: 1, number2: widget.branchid),
              /*  UnitDoctorWidget(
                  name: "mgr Grażyna Małek",
                  speciality: "specjalizacja kardiochirurgia",
                  image: AssetImage('assets/images/doctor.png'),
                ),
                UnitDoctorWidget(
                  name: "mgr Jacek Koszmar",
                  speciality: "specjalizacja ligma",
                  image: AssetImage('assets/images/doctor.png'),
                ),*/
                InfoLabelWidget(label: 'Znajdź nas:'),
                StaticmapWidget(),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'Kontakt:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        color: Color(0xFF263139),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      '+48 111 222 333',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        color: Color(0xFF263139),
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                AboutUnitButton(
                  text: 'ZAREZERWUJ TERMIN',
                  colorText: Color(0xFF263139),
                  colorButton: Color(0xFFFEFEFE),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(

                      builder: (_) => Calendar(branchid: widget.branchid,),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
