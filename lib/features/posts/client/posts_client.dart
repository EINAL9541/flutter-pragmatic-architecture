import 'package:flutter_pragmatic_architecture/core/network/api_client.dart';

import 'output/post.dart';

class PostsClient extends SecureApi {
  PostsClient._();

  static final PostsClient instance = PostsClient._();

  Future<List<Post>> getPosts() {
    return requestData(
      () => client.get<Map<String, dynamic>>('/posts'),
      fromJson: (data) => (data as List<dynamic>)
          .map((item) => Post.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }

  Future<Post> getPost(int id) {
    return requestData(
      () => client.get<Map<String, dynamic>>('/posts/$id'),
      fromJson: (data) => Post.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<void> deletePost(int id) {
    return requestVoid(() => client.delete<Map<String, dynamic>>('/posts/$id'));
  }
}
