//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
Future<String> httpClientGet(basement,link) async {
  var stringData='0';
  var client = http.Client();
  try {


    var response = await client.get(
        Uri.http(basement, link));

    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    stringData=json.encode(decodedResponse);
    print(stringData);
  } catch(error){

  }
  finally {
    client.close();
  }
  return stringData;
}
