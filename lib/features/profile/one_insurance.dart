import 'package:flutter/material.dart';
import 'package:admin_app/features/profile/one_text_insurance.dart';
import 'package:admin_app/configuration/loc_files.dart';

class OneInsurance extends StatefulWidget {
  @override
  _OneInsuranceState createState() => _OneInsuranceState();
}

class _OneInsuranceState extends State<OneInsurance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 487,
      padding: EdgeInsets.all(10.0),
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
          child: Container(
              width: 380,
              height: 387,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(77, 175, 140, 1),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: EdgeInsets.only(right: 4.0, 
                                      left: 15.0),
                            width: 85,
                            height: 85,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images + 'pzu.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    OneTextInsurance(
                      top:
                          "Śmierć ubezpieczonego spowodowana nieszczęśliwym wypadkiem (NW)",
                      bottom: "121zł",
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: EdgeInsets.only(right: 4.0, 
                                       left: 15.0),
                            width: 155,
                            height: 155,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images + 'qrcode.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ])),
        ),
      ]),
    );
  }
}
