import 'package:admin_app/features/sick_leave/widgets/sick_leave_card.dart';
import 'package:flutter/material.dart';

class SickLeaveScreen extends StatelessWidget {
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
                'Zwolnienia',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021 o 11:15',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 21.07.2021 o 08:45',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 15.02.2021 o 19:00',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 17.12.2020 o 16:15',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 11.08.2020 o 14:00',
              doctor: 'Lek. Andrzej Mors',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 13.03.2020 o 15:15',
              doctor: 'Lek. Andrzej Mors',
            ),
          ],
        ),
      ],
    );
  }
}
