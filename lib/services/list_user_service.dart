import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:myapp/api/constants.dart';
import 'package:myapp/model/user_model.dart';

class ApiService {
  static Future<List<UserModel>> getUsers() async {
    List<UserModel> _model = [];
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersListEndpoint);
      var response =
          await http.get(url, headers: {"accept": "application/json"});
      if (response.statusCode == 200) {
        _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    return _model;
  }
}
