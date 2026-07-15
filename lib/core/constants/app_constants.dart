abstract final class AppConstants {
  const AppConstants._();

  // App Information
  static const String appName = 'Learning Hero';
  static const String packageName = 'com.hamid.learninghero';
  static const String version = '1.0.0';

  // Animation
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration normalAnimation = Duration(milliseconds: 350);
  static const Duration longAnimation = Duration(milliseconds: 600);

  // UI
  static const double buttonHeight = 56.0;
  static const double borderRadius = 18.0;
  static const double pagePadding = 20.0;

  // Game
  static const int maxStars = 3;
  static const int dailyRewardCoins = 50;
}
