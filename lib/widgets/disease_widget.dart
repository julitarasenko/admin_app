import 'package:flutter/material.dart';

class DiseaseWidget extends StatefulWidget {
  @override
  _DiseaseWidgetState createState() => _DiseaseWidgetState();
}

class _DiseaseWidgetState extends State<DiseaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 109,
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Color(0xFFFEFEFE),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(-1, 0.05),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 8),
                child: Text(
                  'CHOROBA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    color: Color(0xFF263139),
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Text(
                      '14.12.2021',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        color: Color(0xFF263139),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF263139),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Text(
                    '21.12.2021',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF263139),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
