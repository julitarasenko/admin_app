import 'package:flutter/material.dart';

class OneTimeOfVisit extends StatelessWidget {
  final String left;
  final String right;
  final VoidCallback onPressed;

  OneTimeOfVisit({
    required this.left,
    required this.right,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
      alignment: Alignment.bottomCenter,
      child: ButtonTheme(
        minWidth: 140.0,
        height: 92.0,
        child: RaisedButton(
          elevation: 8,
          child: Text(
            left + "-" + right,
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Manrope",
              fontWeight: FontWeight.w800,
            ),
          ),
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
