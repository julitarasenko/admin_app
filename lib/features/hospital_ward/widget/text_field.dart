import 'package:flutter/material.dart';

class TextFieldTemplate extends StatelessWidget {
  final String hintText;
  final int height;
  final Color colorText;
  final Color colorInput;
  final Color colorBorder;
  final double marginHorizontal;
  final double marginVertical;

  TextFieldTemplate({
    required this.hintText,
    required this.height,
    required this.marginVertical,
    required this.marginHorizontal,
    required this.colorText,
    required this.colorInput,
    required this.colorBorder,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginVertical!, horizontal:marginHorizontal!,),
      height: height! * 24.0,
      child: TextField(
        maxLines: height!,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.white, width: 3.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: colorBorder!, width: 3.0),
          ),
          filled: true,
          fillColor: colorInput!,
          hintText: hintText!, //zmienic na string
          hintStyle: TextStyle(color: colorText!),
        ),
      ),
    );
  }
}
