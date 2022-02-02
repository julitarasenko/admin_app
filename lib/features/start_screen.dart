import 'package:admin_app/features/login/screens/login_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'mZdrowie',
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 70,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.only(bottom: 16),
                alignment: Alignment.bottomCenter,
                child: ButtonTheme(
                  minWidth: 350.0,
                  height: 48.0,
                  child: RaisedButton(
                    elevation: 8,
                    child: Text(
                      'ZALOGUJ SIĘ Z PROFILEM ZAUFANYM',
                      style: TextStyle(fontSize: 14),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.black,
                    textColor: Colors.white,
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
