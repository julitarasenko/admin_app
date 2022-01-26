import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(karta_zdrowia());
}

class karta_zdrowia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (BuildContext context) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned(
                left: 18,
                top: 107,
                child: Container(
                  width: 340,
                  height: 574,
                  decoration: BoxDecoration(
                    color: Color(
                      0xff64a676,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(
                          0x3f000000,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 561,
                child: Text(
                  "10.12.2021",
                  style: TextStyle(
                    color: Color(
                      0xffffffff,
                    ),
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 463,
                child: Text(
                  "179 cm",
                  style: TextStyle(
                    color: Color(
                      0xffffffff,
                    ),
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: 33,
                top: 370,
                child: Text(
                  "77 kg",
                  style: TextStyle(
                    color: Color(
                      0xffffffff,
                    ),
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: 33,
                top: 505,
                child: Text(
                  "OSTATNIA WIZYTA:",
                  style: TextStyle(
                    color: Color(
                      0xff0c7028,
                    ),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                    shadows: [
                      Shadow(
                        color: Color(
                          0x3f000000,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 407,
                child: Text(
                  "WZROST:",
                  style: TextStyle(
                    color: Color(
                      0xff0c7028,
                    ),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                    shadows: [
                      Shadow(
                        color: Color(
                          0x3f000000,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 318,
                child: Text(
                  "WAGA:",
                  style: TextStyle(
                    color: Color(
                      0xff0c7028,
                    ),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                    shadows: [
                      Shadow(
                        color: Color(
                          0x3f000000,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 140,
                child: Text(
                  "Jan BISKUPSKI",
                  style: TextStyle(
                    color: Color(
                      0xff0c7028,
                    ),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                    shadows: [
                      Shadow(
                        color: Color(
                          0x3f000000,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: 33,
                top: 229,
                child: Text(
                  "WIEK:",
                  style: TextStyle(
                    color: Color(
                      0xff0c7028,
                    ),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                    shadows: [
                      Shadow(
                        color: Color(
                          0x3f000000,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 276,
                child: Text(
                  "21",
                  style: TextStyle(
                    color: Color(
                      0xffffffff,
                    ),
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    letterSpacing: 0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(),
            ],
          ),

        );
      }),
      theme: ThemeData(
        textTheme: TextTheme(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
