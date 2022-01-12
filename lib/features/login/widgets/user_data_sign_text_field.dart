import 'package:flutter/material.dart';

class UserSignDataTextField extends StatelessWidget {
  final String fieldDescription;
  final String hintText;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validatorFunction;
  final bool obscureText;
  final TextEditingController controller;

  UserSignDataTextField({
    required this.fieldDescription,
    required this.hintText,
    required this.onSaved,
    required this.validatorFunction,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              fieldDescription,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Material(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Colors.black54,
              ),
            ),
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 13),
                fillColor: Colors.white,
                filled: true,
              ),
              obscureText: obscureText,
              validator: validatorFunction,
              onSaved: onSaved,
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
