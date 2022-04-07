import 'package:admin_app/features/profile/sick_leave/widgets/sick_leave_card.dart';
import 'package:flutter/material.dart';

class SickLeaveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 2.0),
              child: Text(
                "Zwolnienia",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 25),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
              doctor: 'Let. Andrzej Mars',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
              doctor: 'Let. Andrzej Mars',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
              doctor: 'Let. Andrzej Mars',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
              doctor: 'Let. Andrzej Mars',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
              doctor: 'Let. Andrzej Mars',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
              doctor: 'Let. Andrzej Mars',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
              doctor: 'Let. Andrzej Mars',
            ),
            SizedBox(height: 15),
            SickLeaveCard(
              sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
              doctor: 'Let. Andrzej Mars',
            ),
          ],
        ),
      ],
    );
  }
}
