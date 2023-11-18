import 'package:demo/service.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final ApiService apiService;
  final UserRepository userRepository;

  Home({super.key, required this.apiService, required this.userRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency Injection Manual'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Data from ApiService:',
            ),
            Text(
              apiService.fetchData(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Data from UserRepository:',
            ),
            Text(
              userRepository.fetchUserData(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
