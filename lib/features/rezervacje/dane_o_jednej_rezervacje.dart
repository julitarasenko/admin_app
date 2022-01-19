import 'package:flutter/material.dart';

class Data_of_one_rezervation extends StatelessWidget {
  final String? rezervacja;
  final String? doctor;
  final int color;

  Data_of_one_rezervation({
    this.rezervacja,
    this.doctor,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
              color: Color(color),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 252,
                  height: 54,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          rezervacja!,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            doctor!,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
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
        ],
      ),
    );
  }
}
