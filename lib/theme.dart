import 'package:flutter/material.dart';

class ThemeColors {
  static const primaryBackground = Color(0xFFDEE8FF);
  static const primaryLight = Color(0xFFABC4FF);
  static const onPrimary = Colors.white;
  static const primary = Color(0xFFED4C4C);
  static const gray = Color(0xFF211F1F);
  static const primaryMid = Color(0xFF2D52A8);
  static const darkGray = Color(0xFF34405C);
  static const midGray = Color(0x8034405C);
  static const lightGray = Color(0x4034405C);
  static const extraLightGray = Color(0x0D34405C);
  static const background = Colors.black;
  static const backgroundGrayNew = Color(0xFFEEEEEE);

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
    error: ThemeColors.primary,
    onError: ThemeColors.onPrimary,
    background: ThemeColors.background,
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
      color: Colors.white,
    ),
  ),
  iconTheme: const IconThemeData(
    color: ThemeColors.darkGray,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: ThemeColors.background,
    contentPadding: const EdgeInsets.all(16),
    errorStyle: const TextStyle(
      fontSize: 12.8,
      letterSpacing: -0.3,
      color: ThemeColors.primary,
    ),
    hintStyle: const TextStyle(
      fontWeight: FontWeight.w700,
      color: ThemeColors.midGray,
      fontSize: 16,
      letterSpacing: -0.3,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(8),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(8),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: ThemeColors.darkGray,
    cursorColor: ThemeColors.darkGray,
    selectionColor: ThemeColors.lightGray,
  ),
);
