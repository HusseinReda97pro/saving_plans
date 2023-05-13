import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_colors.dart';

final lightStatusBar = const SystemUiOverlayStyle(
  statusBarIconBrightness: Brightness.dark,
  statusBarBrightness: Brightness.dark,
).copyWith(statusBarColor: AppColors.background);

final lightTheme = ThemeData(
  colorScheme: const ColorScheme(
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.secondary,
    onSecondary: Colors.white,
    background: AppColors.background,
    onBackground: Colors.black,
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
    brightness: Brightness.light,
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateColor.resolveWith(
      (states) => AppColors.primary,
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: AppColors.primary,
  ),
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: lightStatusBar),
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColors.background,
  ),
  cardColor: AppColors.cardColor,
  fontFamily: 'Montserrat', //3
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    buttonColor: AppColors.primary,
  ),
  splashColor: AppColors.secondary,
  hintColor: AppColors.hintColor,
  primaryTextTheme: const TextTheme(
    bodySmall: TextStyle(
      color: AppColors.hintColor,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: TextStyle(
      fontSize: 12.0,
      color: AppColors.primary,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      color: AppColors.textColor_1,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      color: AppColors.primary,
      fontSize: 8.0,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      color: AppColors.hintColor,
      fontSize: 21.0,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: TextStyle(
      color: AppColors.textColor_1,
      fontSize: 13,
      fontWeight: FontWeight.w500,
    ),
  ),
);
