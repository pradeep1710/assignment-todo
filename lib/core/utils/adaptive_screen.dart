import 'package:flutter/material.dart';

/// RETURN TRUE IF VIEW IS LANDSCAPE
bool kIsLandscape(BuildContext context) {
  return MediaQuery.of(context).size.aspectRatio > 1;
}

/// GET HEIGHT VALUE BASED ON SCREEN SIZE
double dynamicHeight(BuildContext context, double height) {
  return MediaQuery.of(context).size.height * (height / 1000);
}

/// GET WIDTH VALUE BASED ON SCREEN SIZE
double dynamicWidth(BuildContext context, double width) {
  return MediaQuery.of(context).size.height * (width / 1000);
}
