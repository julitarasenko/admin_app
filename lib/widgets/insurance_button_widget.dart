import 'package:flutter/material.dart';
import '../core/httpClientGet.dart';

class InsuranceButtonWidget extends StatefulWidget {
  @override
  _InsuranceButtonWidgetState createState() => _InsuranceButtonWidgetState();
}

class _InsuranceButtonWidgetState extends State<InsuranceButtonWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator InsuranceButtonWidget - INSTANCE

    return Container(
        width: 300,
        height: 52,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 300,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(254, 254, 254, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ))),
            Positioned(
                top: 20,
                left: 72,
                child: Text(
                  'Twoje ubezpieczenie',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(38, 49, 57, 1),
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
          ],
        ),
    );
  }
}
