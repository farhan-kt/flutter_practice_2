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

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
