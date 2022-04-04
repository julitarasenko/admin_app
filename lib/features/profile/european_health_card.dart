import 'package:admin_app/configuration/loc_files.dart';
import 'package:admin_app/features/profile/one_text_cards.dart';
import 'package:flutter/material.dart';

class EuropeanHealthCard extends StatefulWidget {
  @override
  _EuropeanHealthCardState createState() => _EuropeanHealthCardState();
}

class _EuropeanHealthCardState extends State<EuropeanHealthCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 587,
      padding: EdgeInsets.all(10.0),
      child: Stack(alignment: Alignment.center, children: <Widget>[
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
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(right: 4.0, left: 15.0),
                            width: 155,
                            height: 155,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images + 'qrcode.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    OneTextCards(
                      top: "Nazwisko:",
                      bottom: "Biskupski",
                    ),
                    OneTextCards(
                      top: "Imie:",
                      bottom: "Jan",
                    ),
                    OneTextCards(
                      top: "Data urodzin:",
                      bottom: "23.03.1998",
                    ),
                    OneTextCards(
                      top: "Osobisty numer identyfikacyjny:",
                      bottom: "12345678",
                    ),
                    OneTextCards(
                      top: "Numer identyfikacji instytucji:",
                      bottom: "12345678",
                    ),
                    OneTextCards(
                      top: "Numer identyfikacji karty:",
                      bottom: "12345678",
                    ),
                    OneTextCards(
                      top: "Data ważności:",
                      bottom: "26.01.2023",
                    ),
                  ])),
        ),
      ]),
    );
  }
}
