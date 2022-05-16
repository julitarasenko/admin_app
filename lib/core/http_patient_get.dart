import 'package:http/http.dart' as http;
import 'dart:convert';

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