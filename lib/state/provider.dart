import 'package:faker/faker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameNotifier extends Notifier<List> {
  @override
  List build() {
    return List.generate(
      10,
      (index) => Faker().person.firstName(),
    );
  }

  void create() {
    state = [...state, faker.person.firstName()];
  }

  void update(oldName) {
    state = state
        .map((item) => item == oldName ? faker.person.firstName() : item)
        .toList();
  }

  void delete(name) {
    state = List.from(state)..remove(name);
  }
}

final listNotifierProvider = NotifierProvider<NameNotifier, List>(() {
  return NameNotifier();
});
