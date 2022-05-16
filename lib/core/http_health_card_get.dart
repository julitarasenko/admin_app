import 'package:http/http.dart' as http;
import 'dart:convert';

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

Future<List<HealthCardAPI>> httpHealthCardGet() async {
  final response = await http
      .get(Uri.parse("http://zutbasement.synology.me:45555/Karta_zdrowia"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => HealthCardAPI.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load healthcard");
  }
}
