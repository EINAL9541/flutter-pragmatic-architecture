import 'package:flutter/material.dart';

import '../client/output/post.dart';

class PostDetailView extends StatelessWidget {
  final Post post;

  const PostDetailView({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Chip(
                avatar: const Icon(Icons.person_outline, size: 18),
                label: Text('Author #${post.userId}'),
              ),
              const SizedBox(width: 8),
              Chip(
                avatar: const Icon(Icons.tag, size: 18),
                label: Text('ID #${post.id}'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            post.title,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Text(
            post.body,
            style: theme.textTheme.bodyLarge?.copyWith(
              height: 1.6,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.85),
            ),
          ),
        ],
      ),
    );
  }
}
