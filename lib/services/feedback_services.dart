import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pregmomcare/config/api_constants.dart';
import 'package:pregmomcare/model/customer_feedback_model.dart';

Future<FeedbackModel> sendFeedback(
    String fullname,
    String email,
    String phone,
    String message) async {
  final response = await http.post(
    Uri.parse(ApiConstants.baseUrl + ApiConstants.customerFeedback),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': fullname,
      'email': email,
      'phone': phone,
      'feedback': message
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return FeedbackModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create user.');
  }
}