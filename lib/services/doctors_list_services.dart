import 'dart:convert';

// ignore: library_prefixes
import 'package:flutter/services.dart' as root_Bundle;
import 'package:pregmomcare/model/doctors_model.dart';

Future<List<DoctorModel>> readJsonData() async {
  final jsondata = await root_Bundle.rootBundle
      .loadString("lib/json_data/listof_doctors.json");
  final list = json.decode(jsondata) as List<dynamic>;
  return list.map((e) => DoctorModel.fromJson(e)).toList();
}
