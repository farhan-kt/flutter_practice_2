import 'package:api_sample_task/model/dob.dart';
import 'package:api_sample_task/model/location.dart';
import 'package:api_sample_task/model/username_model.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final UserName name;
  final Dob dob;
  final Location location;

  User(
      {required this.gender,
      required this.email,
      required this.phone,
      required this.cell,
      required this.name,
      required this.dob,
      required this.location});

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName.frommap(e['name']);
    final dob = Dob.fromMap(e['dob']);
    final location = Location.fromMap(e['location']);
    return User(
        gender: e['gender'] ?? 'Unknown',
        email: e['email'] ?? 'Unknown',
        phone: e['phone'] ?? 'Unknown',
        cell: e['cell'] ?? 'Unknown',
        name: name,
        dob: dob,
        location: location);
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
