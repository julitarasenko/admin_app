import 'package:flutter/foundation.dart';
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
  bool _errorOnChecked = false;
  bool _errorOnUserType = false;
  bool _userExists = false;

  bool _checked = false;
  // UserType _chosenUserType = UserType.NONE;
  // static const _studentUserType = UserType.STUDENT;
  // static const _teacherUserType = UserType.TEACHER;
  // static const _mentorUserType = UserType.MENTOR;

  late TextEditingController _nameTextEditingController;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  @override
  void initState() {
    _nameTextEditingController = TextEditingController();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();

    super.initState();
  }

  void _signUp() {
    if (!_checked) {
      _errorOnChecked = true;
    }
    // if (_chosenUserType == UserType.NONE) {
    //   _errorOnUserType = true;
    // } else {
    //   _errorOnUserType = false;
    // }
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate() &&
          _checked /*&& _chosenUserType != UserType.NONE*/) {
        // print(describeEnum(_chosenUserType));
        Map<String, String> userInfoMap = {
          "username": _nameTextEditingController.text,
          "email": _emailTextEditingController.text,
          "userType": describeEnum(_chosenUserType),
        };

        setState(() {
          isLoading = true;
        });

        AuthMethods()
            .signUpWithEmailAndPassword(_emailTextEditingController.text,
                _passwordTextEditingController.text)
            .then((user) async {
          if (user != null) {
            DatabaseMethods().uploadUserInfo(userInfoMap);

            var data = await DatabaseMethods()
                .getUserByUserEmail(_emailTextEditingController.text);
            final String uid = data.docs.first.id;
            final CommonUser user = CommonUser(
              uid: uid,
              username: data.docs.first['username'],
              email: data.docs.first['email'],
              userType: EnumToString.fromString(
                  UserType.values, data.docs.first['userType']),
            );

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(
                  user: user,
                ),
              ),
            );
          } else {
            setState(() {
              _userExists = true;
              isLoading = false;
            });
          }
        });
      }
    }
  }

  void _onUserTypeRadioChanged(UserType? value) {
    setState(() {
      _chosenUserType = value as UserType;
      _errorOnUserType = false;
      print("student");
    });
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
                      child: Text(
                        "Sign up.",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        "Give us some of your information to get free access to engLearnX.",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      'Your account type',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: _studentUserType,
                              groupValue: _chosenUserType,
                              onChanged: _onUserTypeRadioChanged,
                              activeColor: Colors.deepPurple[300],
                              focusColor: Colors.white,
                            ),
                          ),
                          Text(
                            'Student',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: _teacherUserType,
                              groupValue: _chosenUserType,
                              onChanged: _onUserTypeRadioChanged,
                              activeColor: Colors.deepPurple[300],
                              hoverColor: Colors.white,
                            ),
                          ),
                          Text(
                            'Teacher',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: _mentorUserType,
                              groupValue: _chosenUserType,
                              onChanged: _onUserTypeRadioChanged,
                              activeColor: Colors.deepPurple[300],
                            ),
                          ),
                          Text(
                            'Mentor',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    _errorOnUserType
                        ? Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "You should choose your account type",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.red,
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    UserSignDataTextField(
                      fieldDescription: "Your name",
                      hintText: "Your name",
                      validatorFunction: ValidationBuilder()
                          .required("Name should be provided")
                          .minLength(2,
                              "Invalid name. Must be longer that 2 characters")
                          .build(),
                      controller: _nameTextEditingController,
                      onSaved: (value) {},
                    ),
                    UserSignDataTextField(
                      fieldDescription: "Your e-mail",
                      hintText: "name@email.com",
                      onSaved: (value) {},
                      validatorFunction: ValidationBuilder()
                          .email("Un correct e-mail")
                          .build(),
                      controller: _emailTextEditingController,
                    ),
                    _userExists
                        ? Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "User with such email already exists. Provide another e-mail.",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.red,
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    UserSignDataTextField(
                      fieldDescription: "Password",
                      hintText: "at least 8 characters",
                      validatorFunction: ValidationBuilder()
                          .required(
                              "Password should be provided and be longer that 8 characters")
                          .minLength(8,
                              "Invalid password. Must be longer that 8 characters")
                          .build(),
                      onSaved: (value) {},
                      obscureText: true,
                      controller: _passwordTextEditingController,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: CheckboxListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "By creating and account you agree to the terms of use and our privacy policy.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _checked,
                        onChanged: (value) {
                          setState(() {
                            _checked = !_checked;
                            _errorOnChecked = false;
                          });
                        },
                        activeColor: Colors.deepPurple[300],
                        tileColor:
                            _errorOnChecked ? Colors.red : Colors.transparent,
                        checkColor: Colors.white,
                      ),
                    ),
                    _errorOnChecked
                        ? Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "You should agree with our terms of use and privacy policy",
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
                          child: Text('Create account'),
                          onPressed: () => _signUp(),
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
                          child: Text('Log In'),
                          onPressed: () => Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/log-in',
                              ModalRoute.withName('/log-in')),
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
