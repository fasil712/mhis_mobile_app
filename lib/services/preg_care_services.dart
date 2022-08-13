import 'package:flutter/services.dart' as root_bundle;
import 'dart:convert';

import 'package:pregmomcare/model/preg_care_model.dart';

// ignore: non_constant_identifier_names
Future<List<PregnancyCareModel>> ReadJsonData() async {
  final jsondata = await root_bundle.rootBundle
      .loadString('lib/json_data/preg_care_data.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => PregnancyCareModel.fromJson(e)).toList();
}
