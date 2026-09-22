import 'package:go_router/go_router.dart';

import '../../features/posts/post_detail_screen.dart';
import '../../features/posts/posts_screen.dart';
import 'app_route_key.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    goRoute(
      route: RouteKeys.home,
      builder: (context, state) => const PostsScreen(),
      routes: [
        goRoute(
          route: RouteKeys.post,
          builder: (context, state) {
            final idString = state.pathParameters['id'];
            final id = int.tryParse(idString ?? '') ?? 0;
            return PostDetailScreen(postId: id);
          },
        ),
        // GoRoute(
        //   path: 'posts/:id',
        //   builder: (context, state) {
        //     final idString = state.pathParameters['id'];
        //     final id = int.tryParse(idString ?? '') ?? 0;
        //     return PostDetailScreen(postId: id);
        //   },
        // ),
      ],
    ),
  ],
);

GoRoute goRoute({
  required RouteKeys route,
  required GoRouterWidgetBuilder builder,
  List<RouteBase> routes = const <RouteBase>[],
}) {
  return GoRoute(
    name: route.name,
    path: route.path,
    builder: builder,
    routes: routes,
  );
}
