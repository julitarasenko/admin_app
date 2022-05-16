import 'package:http/http.dart' as http;
import 'dart:convert';

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

Future<List<Disease>> httpDiseaseGet() async {
  final response = await http
      .get(Uri.parse("http://zutbasement.synology.me:45555/Karta_chorych"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Disease.fromJson(data)).toList();
  } else {
    throw Exception("Failed to load disease");
  }
}
