import 'package:api_sample_task/model/dob.dart';
import 'package:api_sample_task/model/location.dart';
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
      final coordinate = LocationCoordinates(
          latitude: e['location']['coordinates']['latitude'],
          longitude: e['location']['coordinates']['longitude']);
      final timeZone = LocationTimeZone(
          offset: e['location']['timezone']['offset'],
          description: e['location']['timezone']['description']);
      final date = e['dob']['date'];
      final dob = Dob(date: DateTime.parse(date), age: e['dob']['age']);
      final location = Location(
          city: e['location']['city'],
          state: e['location']['state'],
          country: e['location']['country'],
          postcode: e['location']['postcode'].toString(),
          coordinates: coordinate,
          timezone: timeZone);
      return User(
          gender: e['gender'] ?? 'Unknown',
          email: e['email'] ?? 'Unknown',
          phone: e['phone'] ?? 'Unknown',
          cell: e['cell'] ?? 'Unknown',
          name: name,
          dob: dob,
          location: location);
    }).toList();
    return users;
  }
}
