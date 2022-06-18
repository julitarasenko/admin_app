import 'package:flutter/material.dart';
import 'package:admin_app/features/profile/sanepid/one_sanepid_text.dart';

class SanepidCard extends StatefulWidget {
  @override
  _SanepidCardState createState() => _SanepidCardState();
}

class _SanepidCardState extends State<SanepidCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(
          'Profil',
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
    body: Container(
      width: 400,
      height: 600,
      padding: EdgeInsets.all(30.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Container(
              width: 380,
              height: 587,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(77, 175, 140, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OneSanepidText(
                    top: "Data wykonanego badania lekarskiego:",
                    bottom: "Biskupski",
                  ),
                  OneSanepidText(
                    top: "Data wykonanego badania na nosicielstwo:",
                    bottom: "Jan",
                  ),
                  OneSanepidText(
                    top: "Stacja, na której dokonano badania:",
                    bottom: "23.03.1998",
                  ),
                  OneSanepidText(
                    top: "Określenie, czy istnieją przeciwskazania do pracy:",
                    bottom: "12345678",
                  ),
                  OneSanepidText(
                    top: "Data przewidzianego kolejnego badania:",
                    bottom: "12345678",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
