import 'package:http/http.dart' as http;
import 'dart:convert';

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

Future<List<Hospital>> httpHospitalGet() async {
  final response = await http.get(Uri.parse(
     "http://zutbasement.synology.me:8081/api/health-service/hospital/findAll"));
    // "http://zutbasement.synology.me:8081/api/health-service/hospitals/"));
  print(response);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Hospital.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load hospital");
  }
}
