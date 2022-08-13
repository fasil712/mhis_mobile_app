import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:pregmomcare/config/constants.dart';
import 'package:pregmomcare/model/client_data_model.dart';

class ApiService {
  static Future<List<ClientDataModel>> getUsers() async {
    List<ClientDataModel> _model = [];
    try {
      var url =
          Uri.parse(ApiConstants.baseUrl + ApiConstants.clientListEndpoint);
      var response =
          await http.get(url, headers: {"accept": "application/json"});
      if (response.statusCode == 200) {
        _model = clientDataModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    return _model;
  }
}