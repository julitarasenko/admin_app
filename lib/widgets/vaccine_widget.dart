import 'package:flutter/material.dart';

class VaccineWidget extends StatefulWidget {
  @override
  _VaccineWidgetState createState() => _VaccineWidgetState();
}

class _VaccineWidgetState extends State<VaccineWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 109,
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Color(0xFF7DA6CB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: Text(
                    'CHOROBA',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF0A4B61),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(1, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                      child: Text(
                        'DAWKA',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          color: Color(0xFF0A4B61),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 6, 0, 0),
              child: Text(
                'SZCZEPIONKA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  color: Color(0xFFFEFEFE),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 6, 0, 0),
              child: Text(
                '14.12.2021',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  color: Color(0xFF0A4B61),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
