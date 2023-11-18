import 'package:demo/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'service.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final ApiService api = ApiService();
  final UserRepository user = UserRepository();

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
