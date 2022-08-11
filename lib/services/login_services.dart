import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/others/constants.dart';
import 'package:myapp/model/login_model.dart';

Future<LoginModel> userLogin(String username, String password) async {
  final response = await http.post(
    Uri.parse(ApiConstants.baseUrl + ApiConstants.usersLoginEndpoint),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': username,
      'password': password
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return LoginModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create user.');
  }
}
