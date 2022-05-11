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
      alignment: AlignmentDirectional(-1, 0.1),
      margin: EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: Container(
          width: 100,
          height: 30,
          constraints: BoxConstraints(
            maxWidth: 100,
            maxHeight: 30,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF4DAF8C),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(40),
              topLeft: Radius.circular(0),
              topRight: Radius.circular(40),
            ),
          ),
          alignment: AlignmentDirectional(0.050000000000000044, 0),
          child: Align(
            alignment: AlignmentDirectional(0.05, 0),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Manrope',
                color: Color(0xFFFEFEFE),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
