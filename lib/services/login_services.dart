import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:myapp/model/login_model.dart';

Future<LoginModel> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('http://localhost:4000/users/id'),
    // Send authorization headers to the backend.
    headers: {
      HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
    },
  );
  final responseJson = jsonDecode(response.body);

  return LoginModel.fromJson(responseJson);
}