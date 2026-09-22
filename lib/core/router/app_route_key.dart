enum RouteKeys{

  home('/'),
  post('posts/:id');

  final String path;

  const RouteKeys(this.path);

  String get routeName => name;

  ///Example[context.go(RouteKeys.post.withId(123));]
  String withId(int id){
    return path.replaceFirst(':id', id.toString());
  }
}