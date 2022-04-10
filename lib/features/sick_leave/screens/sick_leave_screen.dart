import 'package:admin_app/features/sick_leave/widgets/sick_leave_card.dart';
import 'package:flutter/material.dart';

class SickLeaveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SickLeaveCard(
      sickLeaveDescription: 'Zaświadczenie z dnia 05.11.2021',
      doctor: 'Let. Andrzej Mars',
    );
  }
}