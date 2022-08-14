import 'package:flutter/material.dart';
import 'package:pregmomcare/model/doctors_model.dart';
import '../services/doctors_list_services.dart';

class DoctorLsit extends StatefulWidget {
  const DoctorLsit({Key? key}) : super(key: key);

  @override
  State<DoctorLsit> createState() => _DoctorLsitState();
}

class _DoctorLsitState extends State<DoctorLsit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: FutureBuilder<List<DoctorModel>>(
        future: readJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(
              child: Text("${data.error}"),
            );
          } else if (data.hasData) {
            var items = data.data as List<DoctorModel>;
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
              final item = items[index];
              return Column(
                children: [
                  Card(
                    elevation: 8.0,
                    child: Column(children: [
                      Image.asset(item.picture),
                      const SizedBox(height: 10.0,),
                      Text(item.name),
                      const SizedBox(height: 10.0,),
                      Text(item.role)
                    ]),
                  )
                ],
              );
            });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
