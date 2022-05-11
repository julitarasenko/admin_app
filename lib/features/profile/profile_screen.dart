import 'package:admin_app/widgets/button_widget.dart';
import 'package:admin_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final String name;
  final String address;
  ProfileScreen({
    required this.name,
    required this.address,
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
              ProfileWidget(name: widget.name, address: widget.address),
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
