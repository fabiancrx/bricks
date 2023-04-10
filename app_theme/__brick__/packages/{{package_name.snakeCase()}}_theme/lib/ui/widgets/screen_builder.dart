import 'package:flutter/material.dart';
import 'package:{{package_name.snakeCase()}}_theme/{{short_name.snakeCase()}}_theme.dart';

/// Provides a builder function for different screen sizes
///
/// Each builder will get built based on the current device width.
/// [breakPoint] define your own custom device resolutions
/// [mobile] will be built when width smaller than [breakPoint.tablet]
/// [tablet] will be built when width is between [breakPoint.tablet] and [breakPoint.desktop]
/// [desktop] will be built if width is greater than  [breakPoint.desktop]
/// Desktop
class ScreenBuilder extends StatelessWidget {
  final BreakPoint? breakPoint;
  final WidgetBuilder? mobile;
  final WidgetBuilder? tablet;
  final WidgetBuilder? desktop;

  ScreenBuilder({super.key, this.breakPoint, this.mobile, this.tablet, this.desktop})
      : assert([mobile, desktop, tablet].where((builder) => builder != null).length > 1,
  "You need to provide more than one builder, else just use the widget you want directly");

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize(breakPoint);
    switch (screenSize) {
      case ScreenSize.mobile:
        if (mobile != null) return mobile!(context);
        if (tablet != null) return tablet!(context);
        break;
      case ScreenSize.tablet:
        if (tablet != null) return tablet!(context);
        if (mobile != null) return mobile!(context);
        break;
      case ScreenSize.desktop:
        if (desktop != null) return desktop!(context);
        if (tablet != null) return tablet!(context);
        if (mobile != null) return mobile!(context);
        break;
    }
    // This error should never appear in the app due to the assert in the constructor
    throw FlutterError("[ScreenBuilder] No builders provided");
  }
}
