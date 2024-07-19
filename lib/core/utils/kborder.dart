import 'package:flutter/material.dart';

import '../constants/appcolors.dart';

class KBoarder {
  const KBoarder._();

  /// ROUNDED RECTANGLE BORDER
  static RoundedRectangleBorder roundedRectBorder({double radius = 10}) =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

  /// ROUNDED OUTLINED BORDER
  static OutlineInputBorder roundedOutlinedBorder({double radius = 10}) =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(radius));

  /// ROUNDED OUTLINED BORDER SWATCH
  static OutlineInputBorder roundedOutlinedBorderSwatch({double radius = 10}) =>
      OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.swatch),
          borderRadius: BorderRadius.circular(radius));

  /// BORDER RADIUS
  static BorderRadius borderRadius({double radius = 10}) =>
      BorderRadius.circular(radius);

  static BorderRadius borderRadiusTop({double radius = 10}) =>
      BorderRadius.only(topLeft: Radius.circular(radius),topRight: Radius.circular(radius));


}
