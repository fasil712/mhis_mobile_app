import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors_constants.dart';
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
      height: MediaQuery.of(context).size.height/2-60,
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
                        elevation: 4.0,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 5, bottom: 15),
                          child: Column(children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.blue)),
                                height: 200,
                                width: 200,
                                child: Image.asset(item.picture)),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              item.name,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.appbarBgColor),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              item.role,
                              style: const TextStyle(
                                  fontSize: 15),
                            )
                          ]),
                        ),
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
