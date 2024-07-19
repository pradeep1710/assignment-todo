import 'package:flutter/material.dart';

import './adaptive_screen.dart';

class KPadding {
  const KPadding._();

  /// DYNAMIC SYMMETRIC PADDING ACCORDING TO SCREEN SIZE
  static EdgeInsets symmetric(BuildContext context,
      {double horizontal = 0, double vertical = 0}) {
    return EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, horizontal),
        vertical: dynamicHeight(context, vertical));
  }

  /// DYNAMIC EACH SIDE PADDING ACCORDING TO SCREEN SIZE
  static EdgeInsets only(BuildContext context,
      {double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return EdgeInsets.only(
        left: dynamicWidth(context, left),
        top: dynamicHeight(context, top),
        right: dynamicWidth(context, right),
        bottom: dynamicHeight(context, bottom));
  }
}
