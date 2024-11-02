import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomTextStyle {
  static headlineLarge(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 32,
        color: color ?? AppColors.textPrimary,
        letterSpacing: -0.5,
        fontFamily: "rubikMedium");
  }

  static headlineSmall(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 24,
        color: color ?? AppColors.textPrimary,
        letterSpacing: -0.5,
        fontFamily: "rubikMedium");
  }

  static titleLarge({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 22,
        color: color ?? AppColors.textPrimary,
        letterSpacing: 0.1,
        fontFamily: "rubikSemiBold");
  }

  static titleMedium({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        color: color ?? AppColors.textPrimary,
        letterSpacing: 0.1,
        fontFamily: "rubikSemiBold");
  }

  static titleSmall({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        color: color ?? AppColors.textPrimary,
        letterSpacing: 0.1,
        fontFamily: "rubikSemiBold");
  }

  static labelLarge({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        color: color ?? AppColors.textPrimary,
        letterSpacing: 0.3,
        fontFamily: "rubikMedium");
  }

  static labelMedium({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 12,
        color: color ?? AppColors.textPrimary,
        letterSpacing: 0.3,
        fontFamily: "rubikMedium");
  }

  static labelSmall({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 11,
        color: color ?? AppColors.textPrimary,
        letterSpacing: 0.3,
        fontFamily: "rubikMedium");
  }

  static bodyLarge({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        color: color ?? AppColors.textPrimary,
        letterSpacing: 0.4,
        fontFamily: "rubikRegular");
  }

  static bodyMedium({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        color: color ?? AppColors.textSecondary,
        letterSpacing: 0.4,
        fontFamily: "rubikRegular");
  }

  static bodySmall({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 12,
        color: color ?? AppColors.textPrimary,
        letterSpacing: 0.4,
        fontFamily: "rubikRegular");
  }
}
