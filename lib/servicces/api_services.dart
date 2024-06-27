import 'package:getx_project/model/post_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices {
  static var client = http.Client();

  Future<List<postModel>> fetchPost() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<postModel>((json) => postModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to loade post');
    }
  }
}
