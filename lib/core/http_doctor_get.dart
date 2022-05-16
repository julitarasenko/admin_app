import 'package:http/http.dart' as http;
import 'dart:convert';

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