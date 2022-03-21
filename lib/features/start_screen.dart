import 'package:admin_app/features/login/screens/login_screen.dart';
import 'package:admin_app/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 380,
                width: 380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/start_screen_background.png'),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Align(
                      alignment: Alignment(0.0, 0.25),
                      child: Text(
                        'mZdrowie',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 48,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
