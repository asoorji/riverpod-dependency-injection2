import 'package:faker/faker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IndexNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  choose() {
    if (state < ref.read(listProvider.notifier).state.length - 1) {
      state++;
    } else {
      state = 0;
    }
  }
}

final indexNotifierProvider = NotifierProvider<IndexNotifier, int>(() {
  return IndexNotifier();
});

final listProvider =
    StateProvider((ref) => List.generate(5, (index) => Faker().person.name()));
