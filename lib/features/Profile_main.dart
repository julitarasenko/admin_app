import 'dart:io';

import 'package:admin_app/configuration%20folder/loc_files.dart';
import 'package:admin_app/widgets/VaccineWidget.dart';
import 'package:admin_app/widgets/aidswidget.dart';
import 'package:admin_app/widgets/profile_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/ButtonWidget.dart';
import '../widgets/European_Health_Insurance_CardButtonWidget.dart';
import '../widgets/SanepidButtonWidget.dart';
import '../widgets/SickLeaveButtonWidget.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  runApp(const Profile());
}

//image: new AssetImage(images + 'janek.png'),
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile',
      home: Scaffold(
        body: ListView(
          children: [
            ProfilWidget(),
          ],
        ),
      ),
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
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
              top: 50,
              left: 38,
              child:profile_widget(),
          ),
          Positioned(
            top: 374,
            child: ButtonWidget(),
          ),
          Positioned(
            top: 442,
            child: Sick_LeaveButtonWidget(),
          ),
          Positioned(
            top: 510,
            child: European_Health_Insurance_CardButtonWidget(),
          ),
          Positioned(
            top: 578,
            child: SanepidButtonWidget(),
          )
        ]));
  }
}
