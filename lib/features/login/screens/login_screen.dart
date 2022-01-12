// TODO: Should be deleted when any other screen will be added!
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../widgets/user_data_sign_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _logger = Logger();
  final GlobalKey<FormState> _formKey = GlobalKey();

  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  bool _isLoading = false;
  bool _errorOnLogin = false;

  @override
  void initState() {
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();

    super.initState();
  }

  void _login() {
    /// TODO: All code below is not required for your app, because it was made to auth
    /// in Firebase. Instead this method should handle your backend authentication.
    ///
    /// Also, for the first implementation without backend integration, you could add
    /// here just some navigation to the next screen
    ///
    // if (_formKey.currentState != null) {
    //   if (_formKey.currentState!.validate()) {
    //     setState(() {
    //       _isLoading = true;
    //     });
    //
    //     AuthMethods()
    //         .signInWithEmailAndPassword(_emailTextEditingController.text,
    //             _passwordTextEditingController.text)
    //         .then((user) async {
    //       if (user != null) {
    //         var data = await DatabaseMethods()
    //             .getUserByUserEmail(_emailTextEditingController.text);
    //         _logger.d(data.docs.first.data().toString());
    //
    //         final String uid = data.docs.first.id;
    //         final CommonUser user = CommonUser(
    //           uid: uid,
    //           username: data.docs.first['username'],
    //           email: data.docs.first['email'],
    //           userType: EnumToString.fromString(
    //               UserType.values, data.docs.first['userType']),
    //         );
    //         _logger.d(user.toString());
    //         Navigator.pushReplacement(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => HomeScreen(
    //               user: user,
    //             ),
    //           ),
    //         );
    //       } else {
    //         setState(() {
    //           _isLoading = false;
    //           _errorOnLogin = true;
    //         });
    //       }
    //     });
    //   }
    // }
  }

  /// TODO: Be careful and change widgets in build method to have them right
  /// styling regarding to your figma project
  ///
  /// Also, dont forget about [UserSignDataTextField] widget, which shows textfields
  /// in forms. Probably it should be changed to to your needs
  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Container(
            color: Colors.deepPurple[50],
            child: CircularProgressIndicator(
              color: Colors.deepPurple[300],
            ),
            alignment: AlignmentDirectional.center,
          )
        : Scaffold(
            backgroundColor: Colors.deepPurple[50],
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 46.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Log in.",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        "Log in with your data that you entered during your registration.",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    UserSignDataTextField(
                      fieldDescription: "Your e-mail",
                      hintText: "name@email.com",
                      onSaved: (value) {},
                      validatorFunction: (value) {
                        if (value != null) {
                          if (value.isEmpty || !value.contains('@')) {
                            return 'invalid email';
                          }
                        }
                        return null;
                      },
                      controller: _emailTextEditingController,
                    ),
                    UserSignDataTextField(
                      fieldDescription: "Password",
                      hintText: "at least 8 characters",
                      validatorFunction: (value) {},
                      onSaved: (value) {},
                      obscureText: true,
                      controller: _passwordTextEditingController,
                    ),
                    _errorOnLogin
                        ? Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Invalid e-mail or password. Try again.",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.red,
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    Container(
                      child: ButtonTheme(
                        minWidth: 350.0,
                        height: 36.0,
                        child: RaisedButton(
                          child: Text('Log in'),
                          onPressed: () => _login(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.deepPurple[300],
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: ButtonTheme(
                        minWidth: 350.0,
                        height: 36.0,
                        child: RaisedButton(
                          child: Text('Sign up'),
                          onPressed: () => Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/sign-up',
                              ModalRoute.withName('/sign-up')),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.purple[50],
                          textColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
