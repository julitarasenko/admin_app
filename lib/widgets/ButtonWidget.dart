import 'package:flutter/material.dart';
import  '../core/httpClientGet.dart';
class ButtonWidget extends StatefulWidget {
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ButtonWidget - INSTANCE

    return Container(
        width: 343,
        height: 52,

        child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: InkWell(
                  child: Container(
                      width: 343,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius : const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color : const Color.fromRGBO(0, 0, 0, 1),
                        border : Border.all(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          width: 2,
                        ),
                      )
                  ),
                  onTap: (){
                    httpClientGet('zutbasement.synology.me:8081', '/user');
                  },
                ),
              ), const Positioned(
                  child: Text('Twoje Ubezpieczenie', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1
                  ),)
              ),
            ]
        )
    );
  }
}