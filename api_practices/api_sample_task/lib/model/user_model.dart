import 'package:api_sample_task/model/username_model.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String country;
  final String cell;
  final UserName name;

  User(
      {required this.gender,
      required this.email,
      required this.phone,
      required this.country,
      required this.cell,
      required this.name});

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
