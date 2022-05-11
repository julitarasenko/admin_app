import 'package:admin_app/widgets/button_widget.dart';
import 'package:admin_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/core/http_client_get.dart';

class ProfileScreen extends StatefulWidget {
  final String text;
  final String text2;
  ProfileScreen({
    required this.text,
    required this.text2,
  });
  @override
  _ProfileScreenState createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Szpitale',
          style: TextStyle(
            color: Color(0xFF263139),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFF263139),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileWidget(text: widget.text, text2: widget.text2),
              ButtonWidget(
                text: 'TWOJE UBEZPIECZENIE',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
              ButtonWidget(
                text: 'TWOJE ZWOLNIENIA',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
              ButtonWidget(
                text: 'ERUOPEJSKA KARTA UBEZPIECZENIA ZDROWOTNEGO',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
              ButtonWidget(
                text: 'KSIĄŻECZKA SANEPIDOWSKA',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-up',
                  ModalRoute.withName('/login'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}