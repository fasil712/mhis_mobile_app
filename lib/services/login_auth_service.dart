import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/others/constants.dart';

class AuthServices {
  // static Future<http.Response> register(
  //     String name, String username, String password) async {
  //   Map data = {
  //     "name": name,
  //     "username": username,
  //     "password": password,
  //   };
  //   var body = json.encode(data);
  //   var url = Uri.parse(baseURL + 'auth/register');
  //   http.Response response = await http.post(
  //     url,
  //     headers: headers,
  //     body: body,
  //   );
  //   print(response.body);
  //   return response;
  // }

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
    print(response.body);
    return response;
  }
}
