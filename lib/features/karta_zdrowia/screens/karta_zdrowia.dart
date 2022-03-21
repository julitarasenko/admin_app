import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:admin_app/configuration%20folder/loc_files.dart';
import 'package:admin_app/features/karta_zdrowia/screens/one_text_cards.dart';


class KartaZdrowia extends StatefulWidget {
  @override
  _KartaZdrowiaState createState() => _KartaZdrowiaState();
}

class _KartaZdrowiaState extends State<KartaZdrowia> {
  // final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 587,
      padding: new EdgeInsets.all(10.0),
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
          child: Container(
              width: 380,
              height: 587,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color.fromRGBO(77, 175, 140, 1),
              ),
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(right: 4.0, left: 15.0),
                            width: 155,
                            height: 155,
                            decoration: BoxDecoration(
                                  image : DecorationImage(
                                      image: AssetImage(images + 'janek.png'),
                                      fit: BoxFit.fitWidth
                                  ),
                                  borderRadius : BorderRadius.all(Radius.elliptical(150, 150)),
                            ))),
        Positioned(
            child: Text('Jan Biskupski', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(254, 254, 254, 1),
                fontFamily: 'Manrope',
                fontSize: 24,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1,
            ),)),
                    OneTextCards(
                      left: "Wiek:",
                      right: "21",
                    ),
                    OneTextCards(
                      left: "Waga:",
                      right: "77 KG",
                    ),
                    OneTextCards(
                      left: "Wzrost:",
                      right: "179 CM",
                    ),
                    OneTextCards(
                      left: "Ostatnia wizyta:",
                      right: "10.12.2021",
                    ),
                  ])),
        ),
      ]),
    );
  }
}