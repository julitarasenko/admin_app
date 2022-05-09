import 'package:admin_app/features/about_unit/about_unit_button.dart';
import 'package:admin_app/features/about_unit/info_label_widget.dart';
import 'package:admin_app/features/about_unit/staticmap_widget.dart';
import 'package:admin_app/features/about_unit/unit_doctor_widget.dart';
import 'package:admin_app/features/health_card/screens/button_widget_health_card.dart';
import 'package:admin_app/features/login/screens/login_screen.dart';
import 'package:admin_app/widgets/disease_widget.dart';
import 'package:admin_app/widgets/button_widget.dart';
import 'package:admin_app/widgets/vaccine_widget.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'dart:ui';
import 'package:admin_app/features/health_card/screens/health_card.dart';
import 'package:admin_app/widgets/doctor_widget.dart';

class AboutUnit extends StatefulWidget {
  @override
  _AboutUnitState createState() => _AboutUnitState();
}

class _AboutUnitState extends State<AboutUnit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
      alignment: AlignmentDirectional(0, -0.9),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.05, 0.15),
                child: Text(
                  'Szpitalny oddział warunkowy',
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
              UnitDoctorWidget(
                name: "mgr Grażyna Małek",
                speciality: "specjalizacja kardiochirurgia",
                image: AssetImage('assets/images/doctor.png'),
              ),
              UnitDoctorWidget(
                name: "mgr Jacek Koszmar",
                speciality: "specjalizacja ligma",
                image: AssetImage('assets/images/doctor.png'),
              ),

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
                onPressed: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
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