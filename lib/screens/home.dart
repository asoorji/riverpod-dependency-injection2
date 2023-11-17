import 'package:demo/state/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(listNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod CRUD'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: item.length,
                itemBuilder: (_, index) {
                  return Center(
                    child: Column(
                      children: [
                        const Gap(5),
                        GestureDetector(
                          onTap: () {
                            ref
                                .read(listNotifierProvider.notifier)
                                .delete(item[index]);
                          },
                          onLongPress: () {
                            ref
                                .read(listNotifierProvider.notifier)
                                .update(item[index]);
                          },
                          child: Text(
                            item[index].toString(),
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        const Gap(5),
                      ],
                    ),
                  );
                }),
          ),
          Expanded(child: Container()),
          const Text(
              'NB: click to delete item\nLong press to edit the item\nClick the button to add new item'),
          const Gap(50),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(listNotifierProvider.notifier).create();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
