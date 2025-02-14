import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:apirashika/login/login_model.dart';

class LoginApiService {
  final String _baseUrl = "https://mediadwi.com/api/latihan/login";

  Future<LoginPostModel> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
      body: {
        "username": username,
        "password": password,
      },
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return LoginPostModel.fromJson(data);
    } else {
      throw Exception("Failed to login");
    }
  }
}
