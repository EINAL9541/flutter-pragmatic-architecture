import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../core/extensions/safe_call.dart';
import '../../core/ui/layout/adaptive_layout.dart';
import '../../core/ui/layout/responsive_breakpoints.dart';
import 'client/output/post.dart';
import 'client/posts_client.dart';
import 'widgets/post_card.dart';
import 'widgets/post_detail_view.dart';

class PostsScreen extends HookWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = PostsClient.instance;

    final posts = useState<List<Post>>([]);
    final searchController = useTextEditingController();
    final searchQuery = useState<String>('');
    final selectedPost = useState<Post?>(null);

    Future<void> loadPosts() async {
      final result = await context.safeCall(action: repository.getPosts);
      if (result != null) {
        posts.value = result;
      }
    }

    useEffect(() {
      loadPosts();
      return null;
    }, [repository]);

    useEffect(() {
      void listener() {
        searchQuery.value = searchController.text.trim().toLowerCase();
      }

      searchController.addListener(listener);
      return () => searchController.removeListener(listener);
    }, [searchController]);

    final isWide = context.isFoldOrWider;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Posts'),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: isWide
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                isWide ? 'Fold/Dual-Pane' : 'Compact',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: isWide
                      ? Theme.of(context).colorScheme.onPrimaryContainer
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            tooltip: 'Refresh',
            onPressed: loadPosts,
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          final allPosts = posts.value;

          final filteredPosts = searchQuery.value.isEmpty
              ? allPosts
              : allPosts
                    .where(
                      (p) =>
                          p.title.toLowerCase().contains(searchQuery.value) ||
                          p.body.toLowerCase().contains(searchQuery.value),
                    )
                    .toList();

          final activePost =
              filteredPosts.any((p) => p.id == selectedPost.value?.id)
              ? selectedPost.value
              : (isWide && filteredPosts.isNotEmpty
                    ? filteredPosts.first
                    : null);

          final masterWidget = Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search posts...',
                    prefixIcon: const Icon(Icons.search, size: 20),
                    suffixIcon: searchQuery.value.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear, size: 18),
                            onPressed: () => searchController.clear(),
                          )
                        : null,
                    isDense: true,
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.surface,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: filteredPosts.isEmpty
                    ? const Center(
                        child: Text(
                          'No posts found.',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    : RefreshIndicator(
                        onRefresh: loadPosts,
                        child: ListView.builder(
                          itemCount: filteredPosts.length,
                          itemBuilder: (context, index) {
                            final post = filteredPosts[index];
                            final isSelected =
                                isWide && activePost?.id == post.id;

                            return Container(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.primary
                                        .withValues(alpha: 0.08)
                                  : null,
                              child: PostCard(
                                post: post,
                                onTap: () {
                                  if (isWide) {
                                    selectedPost.value = post;
                                  } else {
                                    context.push('/posts/${post.id}');
                                  }
                                },
                                onDelete: () async {
                                  final deleted = await context.safeCall(
                                    action: () async {
                                      await repository.deletePost(post.id);
                                      return true;
                                    },
                                  );

                                  if (deleted != true) return;

                                  if (selectedPost.value?.id == post.id) {
                                    selectedPost.value = null;
                                  }

                                  await loadPosts();
                                },
                              ),
                            );
                          },
                        ),
                      ),
              ),
            ],
          );

          return AdaptiveSplitView(
            master: masterWidget,
            detail: activePost != null
                ? PostDetailView(post: activePost)
                : null,
            emptyDetailPlaceholder: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.article_outlined, size: 48, color: Colors.grey),
                  SizedBox(height: 12),
                  Text(
                    'Select a post from the list to view details',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
