enum RouteKeys {
  home('/'),
  post('posts/:id');

  final String path;

  const RouteKeys(this.path);

  String get routeName => name;

  /// Builds the route path with the given ID.
  /// 
  /// Example: 
  /// ```dart 
  /// context.go(RouteKeys.post.withId(123)); 
  /// ```
  String withId(int id) {
    return path.replaceFirst(':id', id.toString());
  }
}
