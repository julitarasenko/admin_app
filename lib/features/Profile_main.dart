import 'package:flutter/material.dart';
import 'dart:io';
import '../widgets/ButtonWidget.dart';
import '../widgets/SickLeaveButtonWidget.dart';
import '../widgets/European_Health_Insurance_CardButtonWidget.dart';
import '../widgets/SanepidButtonWidget.dart';
import 'package:flutter/foundation.dart';
import 'package:adm/configuration%20folder/loc_files.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile',
      home:
      Scaffold(
        body: ListView(
          children:[
            ProfilWidget(),
          ],
      ),),
    );
  }
}


class ProfilWidget extends StatefulWidget {
  @override
  _ProfilWidgetState createState() => _ProfilWidgetState();
}

class _ProfilWidgetState extends State<ProfilWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ProfilWidget - FRAME

    return Container(
        width: 375,
        height: 812,
        decoration: const BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 812,
                      decoration: const BoxDecoration(
                        color : Color.fromRGBO(255, 255, 255, 1),
                      )
                  )
              ),Positioned(
                  top: 88,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 825,
                      decoration: const BoxDecoration(
                        color :  Color.fromRGBO(255, 255, 255, 1),
                      )
                  )
              ),Positioned(
                  top: 112,

                  child: Container(
                      width: 128,
                      height: 128,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: new AssetImage(images+'janek.png'),
                            fit: BoxFit.fitWidth
                        ),
                        borderRadius : const BorderRadius.all(Radius.elliptical(128, 128)),
                      )
                  )
              ),const Positioned(
                  top: 271,

                  child: Text('Jan', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Comfortaa',
                      fontSize: 36,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ), const Positioned(
                  top: 327,

                  child: Text('Szczecin', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1
                  ),)
              ),Positioned(
                  top: 374,
                  child: ButtonWidget(),
              ),Positioned(
                  top: 442,
                  child: Sick_LeaveButtonWidget(),
              ),Positioned(
                  top: 510,
                  child: European_Health_Insurance_CardButtonWidget(),
              ),Positioned(
                  top: 578,
                  child: SanepidButtonWidget(),
              )
            ]
        )
    );
  }
}



