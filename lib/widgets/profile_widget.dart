import 'package:admin_app/configuration/loc_files.dart';
import 'package:flutter/material.dart';


class profile_widget extends StatefulWidget {
  @override
  _profile_widgetState createState() => _profile_widgetState();
}

class _profile_widgetState extends State<profile_widget> {
  @override
  Widget build(BuildContext context) {

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
                        borderRadius : BorderRadius.all(Radius.circular(40)
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
                                          image: new AssetImage(images + 'janek.png'),
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
                                              left:5,
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
                                              left: 45,
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