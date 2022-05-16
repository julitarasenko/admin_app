import 'package:admin_app/core/http_doctor_get.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/widgets/hospital_widget.dart';

class GetDoctor extends StatefulWidget {
  final int number;
  GetDoctor({
    required this.number,
  });
  @override
  _GetDoctorState createState() => _GetDoctorState();
}

class _GetDoctorState extends State<GetDoctor> {
  late Future<List<Doctor>> doctor;
  @override
  void initState() {
    super.initState();
    doctor = httpDoctorGet();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<Doctor>>(
      future: doctor,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Please wait its loading...'));
        } else {
          var name = 'Name error';
          var surname = 'Surname error';
          var specialization = "Specialization error";
          List<Doctor>? data = snapshot.data;
          if (data != null) {
            name = data[widget.number].name;
            surname = data[widget.number].surname;
            specialization = data[widget.number].spec;
          }
          return HospitalWidget(
            image: AssetImage('assets/images/hospital.png'),
            name: '${name}' + ' ${surname}',
            speciality: '${specialization}',
            photo: AssetImage('assets/images/doctor.png'),
            onPressed: () {},
          );
        }
      },
    );
  }

  Future<String> downloadData() async {
    return Future.value("Data download successfully");
  }
}
