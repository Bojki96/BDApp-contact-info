import 'package:flutter/material.dart';

class ThemeColors {
  static const primaryBackground = Color(0xFFDEE8FF);
  static const primaryLight = Color(0xFFABC4FF);
  static const primary = Color(0xFF3B6BDB);
  static const primaryMid = Color(0xFF2D52A8);
  static const darkGray = Color(0xFF34405C);
  static const midGray = Color(0x8034405C);
  static const lightGray = Color(0x4034405C);
  static const extraLightGray = Color(0x0D34405C);
  static const backgroundGray = Color(0xFFF5F5F7);
  static const backgroundGrayNew = Color(0xFFEEEEEE);
  static const errorLight = Color(0xFFFFDEDE);
  static const errorRegular = Color(0xFFA82D2D);
  static const alertLight = Color(0xFFFFFCDE);
  static const alertRegular = Color(0xFFA89C2D);
  static const successLight = Color(0xFFDEFFF1);
  static const successRegular = Color(0xFF2DA874);
}

ThemeData theme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: ThemeColors.primary,
    onPrimary: Colors.white,
    secondary: ThemeColors.midGray,
    onSecondary: ThemeColors.midGray,
    error: ThemeColors.errorRegular,
    onError: ThemeColors.errorLight,
    background: ThemeColors.backgroundGrayNew,
    onBackground: ThemeColors.darkGray,
    surface: Colors.white,
    onSurface: ThemeColors.darkGray,
    tertiary: ThemeColors.lightGray,
    shadow: ThemeColors.midGray,
  ),
  cardColor: Colors.white,
  scaffoldBackgroundColor: ThemeColors.backgroundGrayNew,
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      fontSize: 16,
      color: ThemeColors.darkGray,
    ),
  ),
  iconTheme: const IconThemeData(
    color: ThemeColors.darkGray,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: ThemeColors.backgroundGray,
    contentPadding: const EdgeInsets.all(16),
    errorStyle: const TextStyle(
      fontSize: 12.8,
      letterSpacing: -0.3,
      color: ThemeColors.errorRegular,
    ),
    hintStyle: const TextStyle(
      fontWeight: FontWeight.w700,
      color: ThemeColors.midGray,
      fontSize: 16,
      letterSpacing: -0.3,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: ThemeColors.darkGray,
    cursorColor: ThemeColors.darkGray,
    selectionColor: ThemeColors.lightGray,
  ),
);
