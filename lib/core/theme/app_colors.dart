import 'package:flutter/material.dart';

/// Learning Hero Color Palette
/// Centralized application colors.
/// Do not use hardcoded colors anywhere else in the project.

abstract final class AppColors {
  const AppColors._();

  // Primary
  static const Color primary = Color(0xFF4CAF50);
  static const Color primaryDark = Color(0xFF2E7D32);
  static const Color primaryLight = Color(0xFFA5D6A7);

  // Secondary
  static const Color secondary = Color(0xFFFFC107);

  // Accent
  static const Color accent = Color(0xFF29B6F6);

  // Background
  static const Color background = Color(0xFFF5FBFF);
  static const Color surface = Colors.white;

  // Text
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF616161);

  // Status
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color error = Color(0xFFE53935);
  static const Color info = Color(0xFF2196F3);

  // Rewards
  static const Color gold = Color(0xFFFFD54F);
  static const Color silver = Color(0xFFCFD8DC);
  static const Color bronze = Color(0xFFA1887F);

  // Stars
  static const Color star = Color(0xFFFFEB3B);

  // Transparent
  static const Color transparent = Colors.transparent;
}
