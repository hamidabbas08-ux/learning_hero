import 'package:flutter/material.dart';

abstract final class AppDurations {
  const AppDurations._();

  static const Duration instant =
      Duration(milliseconds: 0);

  static const Duration fast =
      Duration(milliseconds: 150);

  static const Duration normal =
      Duration(milliseconds: 300);

  static const Duration medium =
      Duration(milliseconds: 500);

  static const Duration slow =
      Duration(milliseconds: 800);

  static const Duration splash =
      Duration(seconds: 2);

  static const Duration reward =
      Duration(milliseconds: 1200);

  static const Duration mascot =
      Duration(milliseconds: 900);
}
