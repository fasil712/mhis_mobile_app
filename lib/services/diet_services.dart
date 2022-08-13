import 'package:pregmomcare/model/diet_detail_model.dart';
import 'package:flutter/services.dart' as root_bundle;
import 'dart:convert';

// ignore: non_constant_identifier_names
Future<List<DietDetialModel>> ReadJsonData() async {
  final jsondata = await root_bundle.rootBundle
      .loadString('lib/json_data/diet_json_data.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => DietDetialModel.fromJson(e)).toList();
}
