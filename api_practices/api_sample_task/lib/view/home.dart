import 'package:api_sample_task/model/user_model.dart';
import 'package:api_sample_task/services/api.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ScreenHome> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

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
              title: Text(user.fullName),
              subtitle: Text(user.location.timezone.description),
              // tileColor: color,
            );
          }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     fetchData();
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  Future<void> fetchData() async {
    final response = await UserApi.fetchData();
    setState(() {
      users = response;
    });
  }
}
