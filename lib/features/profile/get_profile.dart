import 'package:admin_app/core/http_health_card_get.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/features/profile/profile_screen.dart';

class GetProfile extends StatefulWidget {
  final int number;
  GetProfile({
    required this.number,
  });
  @override
  _GetProfileState createState() => _GetProfileState();
}

class _GetProfileState extends State<GetProfile> {
  late Future<List<HealthCardAPI>> healthcard;
  @override
  void initState() {
    super.initState();
    healthcard = httpHealthCardGet();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<HealthCardAPI>>(
      future: healthcard,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Please wait its loading...'));
        } else {
          var name = 'Name error';
          var surname = 'Surname error';
          var address = "Address error";
          List<HealthCardAPI>? data = snapshot.data;
          if (data != null) {
            name = data[widget.number].name;
            surname = data[widget.number].surname;
            address = data[widget.number].address;
          }
          return ProfileScreen(
            name: '${name}' + ' ' + '${surname}',
            address: '${address}',
          );
        }
      },
    );
  }

  Future<String> downloadData() async {
    return Future.value("Data download successfully");
  }
}
