import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:admin_app/widgets/hospital_widget.dart';
//Work In Progress

class Patient {
  final String login;
  final String pass;
  final String phone;

  const Patient({
    required this.login,
    required this.pass,
    required this.phone,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      login: json['login'],
      pass: json['pass'],
      phone: json['phone'],
    );
  }
}

class GetPatient extends StatefulWidget {
  final int number;
  GetPatient({
    required this.number,
  });
  @override
  _GetPatientState createState() => _GetPatientState();
}

class _GetPatientState extends State<GetPatient> {
  late Future<List<Patient>> patient;
  @override
  void initState() {
    super.initState();
    patient = httpPatientGet();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<Patient>>(
      future: patient,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Please wait its loading...'));
        } else {
          var login = 'Login error';
          var pass = 'Pass error';
          var phone = "Phone error";
          List<Patient>? data = snapshot.data;
          if (data != null) {
            login = data[widget.number].login;
            pass = data[widget.number].pass;
            phone = data[widget.number].phone;
          }
          return Column(
            children: <Widget>[
              HospitalWidget(
                image: AssetImage('assets/images/hospital.png'),
                name: '${login}' + ' ${pass}',
                speciality: '${phone}',
                photo: AssetImage('assets/images/doctor.png'),
                onPressed: () {},
              ),
            ],
          );
        }
      },
    );
  }

  Future<String> downloadData() async {
    return Future.value("Data download successfully");
  }
}

Future<List<Patient>> httpPatientGet() async {
  final response =
      await http.get(Uri.parse("http://zutbasement.synology.me:45555/Pacjent"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Patient.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load patient screen");
  }
}
