import 'package:flutter/material.dart';

abstract final class AppKeys {
  const AppKeys._();

  static final navigatorKey = GlobalKey<NavigatorState>();
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static const ValueKey<String> splash = ValueKey('splash');
  static const ValueKey<String> home = ValueKey('home');
  static const ValueKey<String> welcome = ValueKey('welcome');
  static const ValueKey<String> avatar = ValueKey('avatar');
  static const ValueKey<String> profile = ValueKey('profile');
}
