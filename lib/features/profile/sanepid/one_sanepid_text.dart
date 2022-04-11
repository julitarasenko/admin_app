import 'package:flutter/material.dart';

class OneSanepidText extends StatelessWidget {
  final String top;
  final String bottom;

  OneSanepidText({
    required this.top,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: 400,
        height: 75,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 350,
                  height: 65,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 252,
                        height: 70,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  top!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: "Manrope-ExtraBold",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  bottom!,
                                  style: TextStyle(
                                    fontFamily: "Manrope-ExtraBold",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
