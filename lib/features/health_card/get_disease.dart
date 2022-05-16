import 'package:admin_app/core/http_disease_get.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/widgets/disease_widget.dart';

class GetDisease extends StatefulWidget {
  final int number;
  GetDisease({
    required this.number,
  });
  @override
  _GetDiseaseState createState() => _GetDiseaseState();
}

class _GetDiseaseState extends State<GetDisease> {
  late Future<List<Disease>> disease;
  @override
  void initState() {
    super.initState();
    disease = httpDiseaseGet();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<Disease>>(
      future: disease,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Please wait its loading...'));
        } else {
          var name = 'Name error';
          var date = 'Date error';
          List<Disease>? data = snapshot.data;
          if (data != null) {
            name = data[widget.number].disease;
            date = data[widget.number].date;
          }
          return DiseaseWidget(
            text: '${name}',
            text2: '${date}',
          );
        }
      },
    );
  }

  Future<String> downloadData() async {
    return Future.value("Data download successfully");
  }
}
