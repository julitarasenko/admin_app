import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:admin_app/widgets/hospital_widget.dart';
import 'package:admin_app/features/hospital/hospital_ward_screen.dart';
//Work In Progress

class Hospital {
  final String name;
  final String street;
  final String number;
  final String city;
  final String postcode;
  final String type;

  const Hospital({
    required this.name,
    required this.street,
    required this.number,
    required this.city,
    required this.postcode,
    required this.type,
  });

  factory Hospital.fromJson(Map<String, dynamic> json) {
    return Hospital(
      name: json['name'],
      street: json['street'],
      number: json['number'],
      city: json['city'],
      postcode: json['postCode'],
      type: json['type'],
    );
  }
}

class Doctor {
  final String name;
  final String surname;
  final String spec;
  final String room;

  const Doctor({
    required this.name,
    required this.surname,
    required this.spec,
    required this.room,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      name: json['name'],
      surname: json['surname'],
      spec: json['spec'],
      room: json['room'],
    );
  }
}

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

class HealthCardAPI {
  final String name;
  final String surname;
  final String gender;
  final String pesel;
  final String date;
  final String address;

  const HealthCardAPI({
    required this.name,
    required this.surname,
    required this.gender,
    required this.pesel,
    required this.date,
    required this.address,
  });

  factory HealthCardAPI.fromJson(Map<String, dynamic> json) {
    return HealthCardAPI(
      name: json['name'],
      surname: json['surname'],
      gender: json['gender'],
      pesel: json['pesel'],
      date: json['date'],
      address: json['address'],
    );
  }
}

class Disease {
  final String disease;
  final String doctor;
  final String date;
  final String comment;

  const Disease({
    required this.disease,
    required this.doctor,
    required this.date,
    required this.comment,
  });

  factory Disease.fromJson(Map<String, dynamic> json) {
    return Disease(
      disease: json['disease'],
      doctor: json['doctor'],
      date: json['date'],
      comment: json['comment'],
    );
  }
}

class GetHospital extends StatefulWidget {
  final int number;
  GetHospital({
    required this.number,
  });
  @override
  _GetHospitalState createState() => _GetHospitalState();
}

class _GetHospitalState extends State<GetHospital> {
  late Future<List<Hospital>> hospital;
  @override
  void initState() {
    super.initState();
    hospital = httpHospitalGet();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<Hospital>>(
      future: hospital,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Please wait its loading...'));
        } else {
          var name = 'Name error';
          var city = 'City error';
          List<Hospital>? data = snapshot.data;
          if (data != null) {
            name = data[widget.number].name;
            city = data[widget.number].city;
          }
          return Column(
            children: <Widget>[
              HospitalWidget(
                image: AssetImage('assets/images/hospital.png'),
                name: '${name}',
                speciality: '${city}',
                photo: AssetImage('assets/images/doctor.png'),
                onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => HospitalWardScreen(text: '${name}',text2:'${city}'))),
        ),
            /*    onPressed: () => Navigator.of(context).pushNamed(
                  '/hospital_ward',
                  arguments: <String, String>{
                    'text': '${name}',
                    'text2': '${city}',
                  },
                ),
              ),*/
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

class GetDoctor extends StatefulWidget {
  final int number;
  GetDoctor({
    required this.number,
  });
  @override
  _GetDoctorState createState() => _GetDoctorState();
}

class _GetDoctorState extends State<GetDoctor> {
  late Future<List<Doctor>> doctor;
  @override
  void initState() {
    super.initState();
    doctor = httpDoctorGet();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<Doctor>>(
      future: doctor,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Please wait its loading...'));
        } else {
          var name = 'Name error';
          var surname = 'Surname error';
          var specialization = "Specialization error";
          List<Doctor>? data = snapshot.data;
          if (data != null) {
            name = data[widget.number].name;
            surname = data[widget.number].surname;
            specialization = data[widget.number].spec;
          }
          return Column(
            children: <Widget>[
              HospitalWidget(
                image: AssetImage('assets/images/hospital.png'),
                name: '${name}' + ' ${surname}',
                speciality: '${specialization}',
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

Future<List<Hospital>> httpHospitalGet() async {
  final response =
      await http.get(Uri.parse("http://zutbasement.synology.me:45555/Szpital"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Hospital.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load hospital");
  }
}

Future<List<Doctor>> httpDoctorGet() async {
  final response =
      await http.get(Uri.parse("http://zutbasement.synology.me:45555/Lekarz"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Doctor.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load doctor");
  }
}

Future<List<Patient>> httpPatientGet(basement, link) async {
  final response =
      await http.get(Uri.parse("http://zutbasement.synology.me:45555/Pacjent"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Patient.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load doctor");
  }
}

Future<List<HealthCardAPI>> httpHeatlhCardGet(basement, link) async {
  final response = await http
      .get(Uri.parse("http://zutbasement.synology.me:45555/Karta_zdrowia"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => HealthCardAPI.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load healthcard");
  }
}

Future<List<Disease>> httpDiseaseGet(basement, link) async {
  final response = await http
      .get(Uri.parse("http://zutbasement.synology.me:45555/Karta_choroby"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Disease.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load disease");
  }
}
