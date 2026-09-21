import 'package:flutter/material.dart';
import 'responsive_breakpoints.dart';

class AdaptiveLayout extends StatelessWidget {
  final Widget Function(BuildContext context, BoxConstraints constraints) compact;
  final Widget Function(BuildContext context, BoxConstraints constraints)? medium;
  final Widget Function(BuildContext context, BoxConstraints constraints)? expanded;

  const AdaptiveLayout({
    super.key,
    required this.compact,
    this.medium,
    this.expanded,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenType = constraints.screenType;

        switch (screenType) {
          case DeviceScreenType.expanded:
            if (expanded != null) {
              return expanded!(context, constraints);
            }
            if (medium != null) {
              return medium!(context, constraints);
            }
            return compact(context, constraints);

          case DeviceScreenType.medium:
            if (medium != null) {
              return medium!(context, constraints);
            }
            return compact(context, constraints);

          case DeviceScreenType.compact:
            return compact(context, constraints);
        }
      },
    );
  }
}

class AdaptiveSplitView extends StatelessWidget {
  final Widget master;
  final Widget? detail;
  final Widget? emptyDetailPlaceholder;
  final int masterFlex;
  final int detailFlex;
  final double breakpoint;

  const AdaptiveSplitView({
    super.key,
    required this.master,
    this.detail,
    this.emptyDetailPlaceholder,
    this.masterFlex = 5,
    this.detailFlex = 7,
    this.breakpoint = 600.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= breakpoint;

        if (!isWide) {
          return master;
        }

        final detailContent = detail ??
            emptyDetailPlaceholder ??
            const Center(
              child: Text(
                'Select an item from the list',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            );

        return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: masterFlex,
              child: master,
            ),
            const VerticalDivider(width: 1, thickness: 1),
            Expanded(
              flex: detailFlex,
              child: detailContent,
            ),
          ],
        );
      },
    );
  }
}
