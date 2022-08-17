import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pregmomcare/config/api_constants.dart';
import 'package:pregmomcare/model/client_data_model.dart';

class ApiService {
  static Future<List<ClientDataModel>> getUsers(String query) async {
    var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.clientListEndpoint);
    var response = await http.get(url, headers: {"accept": "application/json"});
    if (response.statusCode == 200) {
      final List clients = json.decode(response.body);
      return clients
          .map((json) => ClientDataModel.fromJson(json))
          .where((client) {
        final firstnameLower = client.firstname.toLowerCase();
        final mrnLower = client.mrn.toLowerCase();
        final searchLower = query.toLowerCase();

        return firstnameLower.contains(searchLower) ||
            mrnLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
