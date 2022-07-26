import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:myapp/model/user_model.dart';

Future<UserModel> registerUser(String facilityname, String mrn, String registrationdate, String firstname, String lastname, String email,
    String phonenumber, String region, String kebele) async {
  final response = await http.post(
    Uri.parse('http://192.168.0.8:4000/users'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'facilityname': facilityname,
      'mrn': mrn,
      'registrationdate': registrationdate,
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'phonenumber': phonenumber,
      'region': region,
      'kebele': kebele,
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return UserModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
