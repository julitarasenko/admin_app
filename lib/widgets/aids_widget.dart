import 'package:flutter/material.dart';

class AidsWidget extends StatefulWidget {
  @override
  _AidsWidgetState createState() => _AidsWidgetState();
}

class _AidsWidgetState extends State<AidsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 77,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 300,
                  height: 77,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(254, 254, 254, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ))),
          Positioned(
              top: 10,
              left: 22,
              child: Text(
                'AIDS',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(38, 49, 57, 1),
                    fontFamily: 'Manrope',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 48,
              left: 22,
              child: Text(
                '02.04.2005 - DALEJ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(38, 49, 57, 1),
                    fontFamily: 'Circe',
                    fontSize: 13,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}
