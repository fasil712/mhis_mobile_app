import 'package:flutter/services.dart' as root_bundle;
import 'dart:convert';
import 'package:pregmomcare/model/danger_sign_model.dart';

Future<List<DangerSignModel>> ReadJsonData() async {
  final jsondata = await root_bundle.rootBundle
      .loadString('lib/json_data/danger_sign.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => DangerSignModel.fromJson(e)).toList();
}
