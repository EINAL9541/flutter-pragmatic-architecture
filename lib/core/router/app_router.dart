import 'package:go_router/go_router.dart';

import '../../features/posts/post_detail_screen.dart';
import '../../features/posts/posts_screen.dart';

final appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PostsScreen(),
        routes: [
          GoRoute(
            path: 'posts/:id',
            builder: (context, state) {
              final idString = state.pathParameters['id'];
              final id = int.tryParse(idString ?? '') ?? 0;
              return PostDetailScreen(postId: id);
            },
          ),
        ],
      ),
    ],
  );
