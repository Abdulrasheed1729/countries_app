import 'package:countries_app/core/colors/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        scaffoldBackgroundColor: LightModeColors.grayWarm25,
        textTheme: const TextTheme(
          subtitle2: TextStyle(
            color: LightModeColors.gray500,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
            color: LightModeColors.grayWarm900,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: LightModeColors.grayWarm25,
          foregroundColor: LightModeColors.grayWarm900,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: LightModeColors.grayWarm900,
            fontFamily: 'Pacifico',
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: LightModeColors.grayWarm900,
        ),
      );

  static ThemeData get dark => ThemeData(
        scaffoldBackgroundColor: DarkModeColors.background,
        textTheme: const TextTheme(
          subtitle2: TextStyle(
            color: DarkModeColors.gray400,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
            color: DarkModeColors.gray300,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: DarkModeColors.background,
          foregroundColor: DarkModeColors.gray200,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: DarkModeColors.gray200,
            fontFamily: 'Pacifico',
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: DarkModeColors.gray400,
        ),
      );
}
