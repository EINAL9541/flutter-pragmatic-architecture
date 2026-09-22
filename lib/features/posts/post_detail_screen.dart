import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/extensions/safe_call.dart';
import 'client/output/post.dart';
import 'client/posts_client.dart';
import 'widgets/post_detail_view.dart';

class PostDetailScreen extends HookWidget {
  final int postId;

  const PostDetailScreen({super.key, required this.postId});

  @override
  Widget build(BuildContext context) {
    final repository = PostsClient.instance;
    final post = useState<Post?>(null);

    Future<void> loadPost() async {
      final result = await context.safeCall(
        action: () => repository.getPost(postId),
      );
      if (result != null) post.value = result;
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (context.mounted) loadPost();
      });
      return null;
    }, [repository, postId]);

    return Scaffold(
      appBar: AppBar(title: Text('Post #$postId')),
      body: Builder(
        builder: (context) {
          if (post.value == null) {
            return const SizedBox.shrink();
          }
          return PostDetailView(post: post.value!);
        },
      ),
    );
  }
}
