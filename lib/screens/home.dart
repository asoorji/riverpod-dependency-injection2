import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/provider.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final players = ref.watch(playerNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Filtered List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
                onChanged: (value) {
                  ref.read(playerNotifierProvider.notifier).filterPlayer(value);
                },
                decoration: const InputDecoration(
                    labelText: "Search", suffixIcon: Icon(Icons.search))),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: players.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        players[index]["name"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        players[index]["country"],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
