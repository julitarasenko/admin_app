import 'package:flutter/material.dart';

class ReservationCard extends StatelessWidget {
  final String reservation;
  final String doctor;
  final bool isPastReservation;

  ReservationCard({
    required this.reservation,
    required this.doctor,
    this.isPastReservation = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 300,
        maxHeight: 85,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        color: isPastReservation ? Color(0xFFFEFEFE) : Color(0xFF4DAF8C),
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                reservation,
                style: TextStyle(
                  color:
                      isPastReservation ? Color(0xFF263139) : Color(0xFFFEFEFE),
                  fontSize: 12,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                doctor,
                style: TextStyle(
                  color:
                      isPastReservation ? Color(0xFF263139) : Color(0xFFFEFEFE),
                  fontSize: 13,
                  fontFamily: 'Circe',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
