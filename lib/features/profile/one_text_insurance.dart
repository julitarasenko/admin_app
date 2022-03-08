import 'package:flutter/material.dart';
import 'package:admin_app/configuration/loc_files.dart';

class OneTextInsurance extends StatelessWidget {
  final String? top;
  final String? bottom;

  OneTextInsurance({
    this.top,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        /*   decoration: BoxDecoration(
        border: Border.all(
        color: Colors.black,
        width: 1,

    ),
          boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
          color: Colors.white,
        ),*/
        width: 400,
        height: 90,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*       Align(
        alignment: Alignment.center,
          child: Container(
              margin: EdgeInsets.only(right: 4.0,left: 15.0),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage(images + 'download.png'),
                    fit: BoxFit.fitWidth),))),*/
            Flexible(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 400,
                  height: 90,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 252,
                        height: 90,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  top!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: "Manrope-ExtraBold",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  bottom!,
                                  style: TextStyle(
                                    fontFamily: "Manrope-ExtraBold",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
