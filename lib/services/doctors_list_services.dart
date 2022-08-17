import 'package:flutter/services.dart' as root_bundle;
import 'dart:convert';
import 'package:pregmomcare/model/doctors_model.dart';

// ignore: non_constant_identifier_names
Future<List<DoctorModel>> readJsonData() async {
  final jsondata = await root_bundle.rootBundle
      .loadString('assets/json_data/listof_doctors.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => DoctorModel.fromJson(e)).toList();
}
