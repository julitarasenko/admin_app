import 'package:flutter/material.dart';


class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator profile - COMPONENT

    return Container(
        width: 300,
        height: 280,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 300,
                      height: 280,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        color : Color.fromRGBO(77, 175, 140, 1),
                      )
                  )
              ),Positioned(
                  top: 30,
                  left: 71,
                  child: Container(
                      width: 159,
                      height: 220,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 5,
                                child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/Ellipse.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                      borderRadius : BorderRadius.all(Radius.elliptical(150, 150)),
                                    )
                                )
                            ),Positioned(
                                top: 160,
                                left: 0,
                                child: Container(
                                    width: 159,
                                    height: 60,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text('Jan Biskupski', textAlign: TextAlign.center, style: TextStyle(
                                                  color: Color.fromRGBO(254, 254, 254, 1),
                                                  fontFamily: 'Manrope',
                                                  fontSize: 24,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),)
                                          ),Positioned(
                                              top: 33,
                                              left: 46,
                                              child: Text('Szczecin', textAlign: TextAlign.center, style: TextStyle(
                                                  color: Color.fromRGBO(254, 254, 254, 1),
                                                  fontFamily: 'Circe',
                                                  fontSize: 18,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),)
                                          ),
                                        ]
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),
            ]
        )
    );
  }
}
