import 'package:demo/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final api = ref.watch(apiProvider);
    final user = ref.watch(userProvider);
    final yoga = ref.watch(yogaProvider).fetchYoga();

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
              api.fetchData(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Data from UserRepository:',
            ),
            Text(
              user.fetchUserData(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Data from Yoga:',
            ),
            Text(
              yoga,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
