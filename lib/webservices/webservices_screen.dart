import 'package:al1_2024/webservices/app_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WebservicesScreen extends StatefulWidget {
  const WebservicesScreen({super.key});

  @override
  State<WebservicesScreen> createState() => _WebservicesScreenState();
}

class _WebservicesScreenState extends State<WebservicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _getUsers,
          child: Text('Coucou'),
        ),
      ),
    );
  }

  void _getUsers() async {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://reqres.in/api',
      ),
    );

    final response = await dio.get('/users?page=1&per_page=5');

    final List<AppUser> users = (response.data['data'] as List).map((json) {
      return AppUser.fromJson(json);
    }).toList();

    print(users);
    // toto(42);
    // toto(42, 'toto');
  }

  void toto(int age, [String? name]) {}
}
