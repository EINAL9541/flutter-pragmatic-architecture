import 'package:flutter/widgets.dart';

enum DeviceScreenType {
  compact,
  medium,
  expanded,
}

class ResponsiveBreakpoints {
  ResponsiveBreakpoints._();

  static const double compactMax = 599.0;

  static const double mediumMax = 839.0;

  static DeviceScreenType getScreenType(double width) {
    if (width < 600) {
      return DeviceScreenType.compact;
    } else if (width < 840) {
      return DeviceScreenType.medium;
    } else {
      return DeviceScreenType.expanded;
    }
  }

  static bool isFoldOrWider(double width) => width >= 600;
}

extension ResponsiveBoxConstraintsExtension on BoxConstraints {
  DeviceScreenType get screenType => ResponsiveBreakpoints.getScreenType(maxWidth);

  bool get isFoldOrWider => ResponsiveBreakpoints.isFoldOrWider(maxWidth);

  bool get isCompact => maxWidth < 600;
}

extension ResponsiveContextExtension on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;
  DeviceScreenType get screenType => ResponsiveBreakpoints.getScreenType(screenWidth);
  bool get isFoldOrWider => ResponsiveBreakpoints.isFoldOrWider(screenWidth);
  bool get isCompact => screenWidth < 600;
}
