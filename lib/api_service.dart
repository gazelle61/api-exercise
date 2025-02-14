// ignore_for_file: prefer_interpolation_to_compose_strings, unused_import, avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:apirashika/post_model.dart';

class ApiService {
  final String baseUrl = 'https://api.thedogapi.com/v1';

  Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(
          Uri.parse('$baseUrl/images/search?limit=20'));

    print("statusCode" + response.statusCode.toString());

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => PostModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
