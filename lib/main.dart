import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/dashboard.dart';
import 'screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router',
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Dashboard(),
      ),
      GoRoute(
          path: '/profile/:name',
          builder: (context, state) => Profile(
                name: state.pathParameters['name'],
              ))
    ],
  );
}
