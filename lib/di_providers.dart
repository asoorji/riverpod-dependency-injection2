import 'package:demo/service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final yogaProvider = Provider<YogaClass>((ref) => YogaClass());

final apiProvider = Provider<ApiService>((ref) => ApiService());

final userProvider = Provider<UserRepository>((ref) => UserRepository());
