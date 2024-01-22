import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScreenHome extends StatelessWidget {
  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    if (response.statusCode == 200) {
      print('Response data: ${response.body}');
    } else {
      print('Failed to load data: ${response.statusCode}');
    }
  }

  Future<void> fetchDioData() async {
    final dio = Dio();
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/posts/1');
      if (response.statusCode == 200) {
        log('response data :${response.data}');
      } else {
        log('error occured: ${response.statusCode}');
      }
    } catch (e) {
      log('error occured: $e');
    }
  }

  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  fetchData();
                },
                child: const Text('fetch Data')),
            ElevatedButton(
                onPressed: () {
                  fetchDioData();
                },
                child: const Text('fetch Dio Data')),
          ],
        ),
      ),
    );
  }
}
