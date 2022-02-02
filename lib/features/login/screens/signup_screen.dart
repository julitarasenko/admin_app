import 'package:admin_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import '../widgets/user_data_sign_text_field.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  bool isLoading = false;
  bool _userExists = false;

  bool _checked = false;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  @override
  void initState() {
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();

    super.initState();
  }

  void _signUp() {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You now should sign up to system')));
    _formKey.currentState!.validate();
    // if (!_checked) {
    //   _errorOnChecked = true;
    // }
    // // if (_chosenUserType == UserType.NONE) {
    // //   _errorOnUserType = true;
    // // } else {
    // //   _errorOnUserType = false;
    // // }
    // if (_formKey.currentState != null) {
    //   if (_formKey.currentState!.validate() &&
    //       _checked /*&& _chosenUserType != UserType.NONE*/) {
    //     // print(describeEnum(_chosenUserType));
    //     Map<String, String> userInfoMap = {
    //       "username": _nameTextEditingController.text,
    //       "email": _emailTextEditingController.text,
    //       "userType": describeEnum(_chosenUserType),
    //     };
    //
    //     setState(() {
    //       isLoading = true;
    //     });
    //
    //     AuthMethods()
    //         .signUpWithEmailAndPassword(_emailTextEditingController.text,
    //             _passwordTextEditingController.text)
    //         .then((user) async {
    //       if (user != null) {
    //         DatabaseMethods().uploadUserInfo(userInfoMap);
    //
    //         var data = await DatabaseMethods()
    //             .getUserByUserEmail(_emailTextEditingController.text);
    //         final String uid = data.docs.first.id;
    //         final CommonUser user = CommonUser(
    //           uid: uid,
    //           username: data.docs.first['username'],
    //           email: data.docs.first['email'],
    //           userType: EnumToString.fromString(
    //               UserType.values, data.docs.first['userType']),
    //         );
    //
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
    //           _userExists = true;
    //           isLoading = false;
    //         });
    //       }
    //     });
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            color: Colors.deepPurple[50],
            child: CircularProgressIndicator(
              color: Colors.deepPurple[300],
            ),
            alignment: AlignmentDirectional.center,
          )
        : Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 46.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Rejestracja',
                        style: TextStyle(
                          fontFamily: 'Monrope',
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    UserSignDataTextField(
                      hintText: 'name@email.com',
                      onSaved: (value) {},
                      validatorFunction: ValidationBuilder()
                          .email('Un correct e-mail')
                          .build(),
                      controller: _emailTextEditingController,
                    ),
                    _userExists
                        ? Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'User with such email already exists. Provide another e-mail.',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.red,
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    UserSignDataTextField(
                      hintText: 'at least 8 characters',
                      validatorFunction: ValidationBuilder()
                          .required(
                              'Password should be provided and be longer that 8 characters')
                          .minLength(8,
                              'Invalid password. Must be longer that 8 characters')
                          .build(),
                      onSaved: (value) {},
                      obscureText: true,
                      controller: _passwordTextEditingController,
                    ),
                    ButtonWidget(
                      text: 'DALEJ',
                      colorText: Color(0xFFFEFEFE),
                      colorButton: Color(0xFF4DAF8C),
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/home-screen'),
                    ),
                    ButtonWidget(
                      text: 'LOG IN',
                      colorText: Color(0xFF263139),
                      colorButton: Color(0xFFFEFEFE),
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/login',
                        ModalRoute.withName('/login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
