import 'dart:convert';

import 'package:api_sample_task/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ScreenHome> {
  List<User> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API SAMPLE'),
        centerTitle: true,
        backgroundColor: Colors.teal[300],
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            // final color = user.gender == 'male' ? Colors.blue : Colors.pink;

            return ListTile(
              title: Text(user.name.first),
              subtitle: Text(user.phone),
              // tileColor: color,
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchData();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void fetchData() async {
    const url = 'https://randomuser.me/api/?results=2';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((e) {
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
    setState(() {
      users = transformed;
    });
  }
}
