import 'package:http/http.dart' as http;
import 'dart:convert';
//Work In Progress
Future<String> httpClientPost(basement,link,id,patientName,
    patientLastName,phoneNumber,email,visitDate,summary) async {
  var stringData='0';
  print("Cos");
  var client = http.Client();
  try {

print("Cos2");
Map data ={
  'id':id,
  'patientName':patientName,
  'patientLastName':patientLastName,
  'phoneNumber':phoneNumber,
  'email':email,
  'visitDate':visitDate,
  'summary':summary
};
var body=jsonEncode(data);
print("Cos3");
    var response = await client.post(
        Uri.http(basement, link),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    body:body
      );
print("${response.statusCode}");
print("${response.body}");
print("Cos4");

  //  var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
  //  var uri = Uri.parse(decodedResponse['uri'] as String);
  //  print(await client.get(uri));
  } catch(error){
print(error);
  }
  finally {
    client.close();
  }
return stringData;
}
