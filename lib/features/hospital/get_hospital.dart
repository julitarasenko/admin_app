import 'package:admin_app/core/http_hospital_get.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/features/hospital/hospital_ward_screen.dart';
import 'package:admin_app/widgets/hospital_widget.dart';

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
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) =>
                        HospitalWardScreen(text: '${name}', text2: '${city}'))),
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
