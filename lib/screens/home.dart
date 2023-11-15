import 'package:demo/state/provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexNotifierProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Update List with Riverpod'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ref.read(listProvider.notifier).state[index].toString(),
                style: const TextStyle(fontSize: 30),
              ),
              IconButton(
                  onPressed: () {
                    ref.read(indexNotifierProvider.notifier).choose();
                  },
                  icon: const Icon(Icons.refresh)),
            ],
          ),
        ));
  }
}
