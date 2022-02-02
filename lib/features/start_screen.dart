import 'package:admin_app/features/login/screens/login_screen.dart';
import 'package:admin_app/widgets/button_widget.dart';
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
              child: ButtonWidget(
                text: 'ZALOGUJ SIĘ Z PROFILEM ZAUFANYM',
                colorText: Color(0xFFFEFEFE),
                colorButton: Color(0xFF4DAF8C),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
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
