import 'package:flutter/material.dart';

import '../../core/constants/app_spacing.dart';

class SafeScreen extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;

  const SafeScreen({
    super.key,
    required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            AppSpacing.screenPadding,
          ),
          child: child,
        ),
      ),
    );
  }
}
