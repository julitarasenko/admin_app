import 'package:admin_app/features/reservation/reservation_card.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/features/hospital_ward/widget/text_field.dart';

class ReservationScreen extends StatefulWidget {
  @override
  _ReservationScreenState createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
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
                'Przyszłe rezerwacje',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            ReservationCard(
              reservation: 'Rezerwacja dnia 13.12.2021 o 15:15',
              doctor: 'Lek. Andrzej Mors',
              isPastReservation: false,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Przeszłe rezerwacje',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            ReservationCard(
              reservation: 'Rezerwacja dnia 05.11.2021 o 11:15',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            ReservationCard(
              reservation: 'Rezerwacja dnia 21.07.2021 o 08:45',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            ReservationCard(
              reservation: 'Rezerwacja dnia 15.02.2021 o 19:00',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            ReservationCard(
              reservation: 'Rezerwacja dnia 17.12.2020 o 16:15',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            ReservationCard(
              reservation: 'Rezerwacja dnia 11.08.2020 o 14:00',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            ReservationCard(
              reservation: 'Rezerwacja dnia 13.03.2020 o 15:15',
              doctor: 'Lek. Andrzej Mors',
            ),
          ],
        ),
      ],
    );
  }
}
