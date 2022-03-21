import 'package:flutter/material.dart';
import '../core/httpClientGet.dart';

class SanepidButtonWidget extends StatefulWidget {
  @override
  _SanepidButtonWidgetState createState() => _SanepidButtonWidgetState();
}

class _SanepidButtonWidgetState extends State<SanepidButtonWidget> {
  @override
  Widget build(BuildContext context) {

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
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color : Color.fromRGBO(254, 254, 254, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      )
                  )
              ),Positioned(
                  top: 20,
                  left: 54,
                  child: Text('Książeczka sanepidowska', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(38, 49, 57, 1),
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
            ]
        )
    );
  }
}
