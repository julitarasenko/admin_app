import 'package:flutter/material.dart';

class AboutUnitButton extends StatelessWidget {
  final String text;
  final Color colorText;
  final Color colorButton;
  final VoidCallback onPressed;

  AboutUnitButton({
    required this.text,
    required this.colorText,
    required this.colorButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 4),
      alignment: Alignment.center,
      child: ButtonTheme(
        minWidth: 300.0,
        height: 52.0,
        child: RaisedButton(
          elevation: 8,
          child: Text(
            text,
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
          color: colorButton,
          textColor: colorText,
        ),
      ),
    );
  }
}
