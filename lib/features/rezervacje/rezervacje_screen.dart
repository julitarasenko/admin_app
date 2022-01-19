import 'package:flutter/material.dart';

import 'dane_o_jednej_rezervacje.dart';

class RezervacjeScreen extends StatefulWidget {
  @override
  _RezervacjeScreenState createState() => _RezervacjeScreenState();
}

class _RezervacjeScreenState extends State<RezervacjeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(50),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Przeszłe rezerwacje",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Data_of_one_rezervation(
              rezervacja: "Rezerwacja dnia 13.12.2021 o 15:15",
              doctor: "Lek. Andrzej Mors",
              color: 0xffa2e891,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Przyszłe rezerwacje",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Data_of_one_rezervation(
              rezervacja: "Rezerwacja dnia 05.11.2021 o 11:15",
              doctor: "Lek. Andrzej Mors",
              color: 0xffe9e9e9,
            ),
            SizedBox(height: 15),
            Data_of_one_rezervation(
              rezervacja: "Rezerwacja dnia 21.07.2021 o 08:45",
              doctor: "Lek. Andrzej Mors",
              color: 0xffe9e9e9,
            ),
            SizedBox(height: 15),
            Data_of_one_rezervation(
              rezervacja: "Rezerwacja dnia 15.02.2021 o 19:00",
              doctor: "Lek. Andrzej Mors",
              color: 0xffe9e9e9,
            ),
            SizedBox(height: 15),
            Data_of_one_rezervation(
              rezervacja: "Rezerwacja dnia 17.12.2020 o 16:15",
              doctor: "Lek. Andrzej Mors",
              color: 0xffe9e9e9,
            ),
            SizedBox(height: 15),
            Data_of_one_rezervation(
              rezervacja: "Rezerwacja dnia 11.08.2020 o 14:00",
              doctor: "Lek. Andrzej Mors",
              color: 0xffe9e9e9,
            ),
            SizedBox(height: 15),
            Data_of_one_rezervation(
              rezervacja: "Rezerwacja dnia 13.03.2020 o 15:15",
              doctor: "Lek. Andrzej Mors",
              color: 0xffe9e9e9,
            ),
          ],
        ),
      ],
    );
  }
}
