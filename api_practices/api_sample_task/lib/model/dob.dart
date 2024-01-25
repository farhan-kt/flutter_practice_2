class Dob {
  final DateTime date;
  final int age;

  Dob({required this.date, required this.age});

  factory Dob.fromMap(Map<String, dynamic> json) {
    return Dob(date: DateTime.parse(json['date']), age: json['age']);
  }
}
