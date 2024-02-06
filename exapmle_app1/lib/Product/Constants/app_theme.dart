import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

final class AppTheme {
  final ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.bgColor),
    textTheme: GoogleFonts.abrilFatfaceTextTheme(),
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(background: AppColors.bgColor),
  );
  final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.bgColor),
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(background: AppColors.bgColor),
  );
}
