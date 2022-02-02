import 'package:flutter/material.dart';

class European_Health_Insurance_CardButtonWidget extends StatefulWidget {
  @override
  _European_Health_Insurance_CardButtonWidgetState createState() =>
      _European_Health_Insurance_CardButtonWidgetState();
}

class _European_Health_Insurance_CardButtonWidgetState
    extends State<European_Health_Insurance_CardButtonWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ButtonWidget - INSTANCE

    return Container(
        width: 343,
        height: 52,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
              top: 0,
              child: Container(
                  width: 343,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: const Color.fromRGBO(30, 80, 209, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: 2,
                    ),
                  ))),
          const Positioned(
              child: Text(
            'Europejska Karta ubezp. zdrowotnego',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Roboto',
                fontSize: 16,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 1),
          )),
        ]));
  }
}
