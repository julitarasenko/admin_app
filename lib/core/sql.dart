import 'package:mysql1/mysql1.dart';
import 'dart:convert';
Future sql() async {
  var settings = new ConnectionSettings(
      host: 'zutbasement.synology.me',
      port: 3306,
      user: 'root',
      password: 'asdf1235',
      db: 'health-service'
  );
  var conn = await MySqlConnection.connect(settings);
  var userId = 1;
  var results = await conn.query(
      'select last_name, name from `health-service`.doctor;');
  print(results);
  await conn.close();
}