import 'package:admin_app/features/profile/sanepid/sanepid_card.dart';
import 'package:admin_app/features/profile/sick_leave/screens/sick_leave_screen.dart';
import 'package:admin_app/widgets/button_widget.dart';
import 'package:admin_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

import 'european_health_card/european_health_card.dart';
import 'insurance/one_insurance.dart';

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
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => OneInsurance(),
                  ),
                ),
              ),
              ButtonWidget(
                text: 'TWOJE ZWOLNIENIA',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SickLeaveScreen(),
                  ),
                ),
              ),
              ButtonWidget(
                text: 'ERUOPEJSKA KARTA UBEZPIECZENIA ZDROWOTNEGO',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => EuropeanHealthCard(),
                  ),
                ),
              ),
              ButtonWidget(
                text: 'KSIĄŻECZKA SANEPIDOWSKA',
                colorText: Color(0xFF263139),
                colorButton: Color(0xFFFEFEFE),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SanepidCard(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
