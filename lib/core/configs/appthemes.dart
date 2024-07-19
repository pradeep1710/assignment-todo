import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/appcolors.dart';

class AppThemes {
  const AppThemes._();

  // LIGHT THEME FOR APP
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffold,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.swatch, brightness: Brightness.light),
    fontFamily: GoogleFonts.quicksand().fontFamily,
    cardColor: AppColors.cardLight,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: AppColors.scaffold,
      surfaceTintColor: AppColors.scaffold,
    ),
  );

  /// DARK THEME FOR APP
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldDark,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.swatchDark, brightness: Brightness.dark),
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    cardColor: AppColors.cardDark,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: AppColors.scaffoldDark,
      surfaceTintColor: AppColors.scaffoldDark,
    ),
  );
}
