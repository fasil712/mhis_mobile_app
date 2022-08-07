import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/api/constants.dart';

import 'package:myapp/model/user_model.dart';

Future<UserModel> registerUser(String facilityname, String mrn, String registrationdate, String firstname, String lastname,  String grandfathername, String age, String sex, String email, String phonenumber, String region,String woreda, String kebele) async {
  final response = await http.post(
    Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'facilityname': facilityname,
      'mrn': mrn,
      'registrationdate': registrationdate,
      'firstname': firstname,
      'lastname': lastname,
      'grandfathername': grandfathername,
      'age': age,
      'sex': sex,
      'email': email,
      'phonenumber': phonenumber,
      'region': region,
      'woreda': woreda,
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
    throw Exception('Failed to create user.');
  }
}
