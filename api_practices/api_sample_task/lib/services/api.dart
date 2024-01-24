import 'package:api_sample_task/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:api_sample_task/model/username_model.dart';

class UserApi {
  static Future<List<User>> fetchData() async {
    const url = 'https://randomuser.me/api/?results=20';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((e) {
      final name = UserName(
          title: e['name']['title'],
          first: e['name']['first'],
          last: e['name']['last']);
      return User(
          gender: e['gender'] ?? 'Unknown',
          email: e['email'] ?? 'Unknown',
          phone: e['phone'] ?? 'Unknown',
          country: e['location']['country'] ?? 'Unknown',
          cell: e['cell'] ?? 'Unknown',
          name: name);
    }).toList();
    return users;
  }
}
