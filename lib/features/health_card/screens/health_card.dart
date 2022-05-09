import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:admin_app/configuration/loc_files.dart';

class HealthCard extends StatelessWidget {
  final String name;
  final int age;
  final int weight;
  final int height;
  final String lastvisit;

  HealthCard({
    required this.name,
    required this.age,
    required this.weight,
    required this.height,
    required this.lastvisit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 300,
            height: 334,
            decoration: BoxDecoration(
              color: Color(0xFF4DAF8C),
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
            ),
            alignment: AlignmentDirectional(0, 0),
            child: Stack(
              alignment: AlignmentDirectional(0, 0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.8),
                  child: Container(
                    width: 83,
                    height: 83,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                              image: AssetImage(images + 'janek.png'),
                              fit: BoxFit.fitWidth),
                        ),
                    ),
                  ),
                Align(
                  alignment: AlignmentDirectional(0, -0.23),
                  child: Text(
                    'Jan Biskupski',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFFFEFEFE),
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.5, 0.6),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 1, 0),
                            child: Text(
                              'Wiek:',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFF263139),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            '21',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 1, 0),
                            child: Text(
                              'Waga:',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFF263139),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              '77 kg',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFFFEFEFE),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 1, 0),
                            child: Text(
                              'Wzrost:',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFF263139),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              '179 cm',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFFFEFEFE),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 1, 0),
                            child: Text(
                              'Ostatnia wizyta:',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFF263139),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              '10.12.2021',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFFFEFEFE),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )

    );
  }
}
