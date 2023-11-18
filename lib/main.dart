import 'package:demo/home.dart';
import 'package:flutter/material.dart';

import 'service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final ApiService api = ApiService();
  final UserRepository user = UserRepository();

  @override
  Widget build(BuildContext context) {
    return Home(
      apiService: api,
      userRepository: user,
    );
  }
}
