import 'package:flutter/material.dart';


class vaccinewidget extends StatefulWidget {
  @override
  _vaccinewidgetState createState() => _vaccinewidgetState();
}

class _vaccinewidgetState extends State<vaccinewidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 300,
        height: 109,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 300,
                      height: 109,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color : Color.fromRGBO(125, 165, 202, 1),
                      )
                  )
              ),Positioned(
                  top: 13,
                  left: 257,
                  child: Text('3/3', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(10, 75, 97, 1),
                      fontFamily: 'Circe',
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 80,
                  left: 22,
                  child: Text('14.12.2021', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(10, 75, 97, 1),
                      fontFamily: 'Circe',
                      fontSize: 13,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 10,
                  left: 22,
                  child: Text('COVID-19', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(10, 75, 97, 1),
                      fontFamily: 'Circe',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 42,
                  left: 22,
                  child: Text('biontech/pfizer', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(254, 254, 254, 1),
                      fontFamily: 'Manrope',
                      fontSize: 24,
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
