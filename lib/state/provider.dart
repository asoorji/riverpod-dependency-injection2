import 'package:riverpod_annotation/riverpod_annotation.dart';

class PlayerNotifier extends Notifier<List<Map<String, dynamic>>> {
  final List<Map<String, dynamic>> allPlayers = [
    {"name": "Orji", "country": "Nigeria"},
    {"name": "Smith", "country": "USA"},
    {"name": "Garcia", "country": "Spain"},
    {"name": "Kim", "country": "South Korea"},
    {"name": "Müller", "country": "Germany"},
    {"name": "Aso", "country": "Nigeria"},
    {"name": "Chen", "country": "China"},
    {"name": "Santos", "country": "Brazil"},
    {"name": "Ivanov", "country": "Russia"},
    {"name": "Tanaka", "country": "Japan"},
    {"name": "Martinez", "country": "Argentina"},
    {"name": "Lee", "country": "South Korea"},
    {"name": "Kumar", "country": "India"},
    {"name": "Dubois", "country": "France"},
    {"name": "Alonso", "country": "Spain"},
  ];

  @override
  build() {
    return allPlayers;
  }

  void filterPlayer(String playerName) {
    List<Map<String, dynamic>> results = [];

    if (playerName.isEmpty) {
      results = allPlayers;
    } else {
      results = allPlayers
          .where((element) => element["name"]
              .toString()
              .toLowerCase()
              .contains(playerName.toLowerCase()))
          .toList();
    }
    state = results;
  }
}

final playerNotifierProvider =
    NotifierProvider<PlayerNotifier, List<Map<String, dynamic>>>(() {
  return PlayerNotifier();
});
