import 'package:flutter/material.dart';
import  '../core/httpClientGet.dart';
class Sick_LeaveButtonWidget extends StatefulWidget {
  @override
  _Sick_LeaveButtonWidgetState createState() => _Sick_LeaveButtonWidgetState();
}

class _Sick_LeaveButtonWidgetState extends State<Sick_LeaveButtonWidget> {
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
                        color : const Color.fromRGBO(255, 255, 255, 1),
                        border : Border.all(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          width: 2,
                        ),
                      )
                  ),
                  onTap: (){
                    httpClientGet('zutbasement.synology.me:8081', '/admin');
                  },
                ),
              ),const Positioned(
                  child: Text('Twoje Zwolnienia', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
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