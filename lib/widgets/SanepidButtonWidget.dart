import 'package:flutter/material.dart';
import '../core/httpClientGet.dart';

class SanepidButtonWidget extends StatefulWidget {
  @override
  _SanepidButtonWidgetState createState() => _SanepidButtonWidgetState();
}

class _SanepidButtonWidgetState extends State<SanepidButtonWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ButtonWidget - INSTANCE

    return Container(
        width: 343,
        height: 52,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
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
                    color: const Color.fromRGBO(91, 249, 35, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: 2,
                    ),
                  ))),
          const Positioned(
              // top: 19,
              //  left: 74.15568542480469,
              child: Text(
            'Książeczka sanepidowska',
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
