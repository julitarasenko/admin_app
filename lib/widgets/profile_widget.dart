import 'package:admin_app/configuration/loc_files.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final String address;

  ProfileWidget({
    required this.name,
    required this.address,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Color.fromRGBO(77, 175, 140, 1),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: new AssetImage(images + 'janek.png'),
                  fit: BoxFit.fitWidth),
              borderRadius: BorderRadius.all(Radius.elliptical(150, 150)),
            ),
          ),
          Container(
            width: 259,
            height: 80,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                AutoSizeText(
                  name,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(254, 254, 254, 1),
                      fontFamily: 'Manrope',
                      fontSize: 30,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ],
            ),
          ),
          Container(
            width: 159,
            height: 25,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                AutoSizeText(
                  address,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(254, 254, 254, 1),
                      fontFamily: 'Circe',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
