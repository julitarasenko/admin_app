import 'package:flutter/material.dart';
import 'dart:math' as math;

class InfoLabelWidget extends StatelessWidget {
  final String label;

  const InfoLabelWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 152,
        height: 30,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 152,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(77, 175, 140, 1),
                  ))),
          Positioned(
              top: 6,
              left: 89,
              child: Text(
                label,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(254, 254, 254, 1),
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}
