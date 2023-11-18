import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/post.dart';
import 'repo.dart';

final postRepositoryProvider = Provider<PostRepository>((ref) {
  return PostRepository();
});

final postProvider = FutureProvider<List<Post>>((ref) async {
  return ref.watch(postRepositoryProvider).fetchPosts();
});
