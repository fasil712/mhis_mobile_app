import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pregmomcare/config/constants.dart';

class AuthServices {
  static Future<http.Response> login(String username, String password, String role) async {
    Map data = {
      "uname": username,
      "password": password,
      "role": role,
    };
    var body = json.encode(data);
    var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersLoginEndpoint);
    http.Response response = await http.post(
      url,
      headers: ApiConstants.headers,
      body: body,
    );
    return response;
  }
}
