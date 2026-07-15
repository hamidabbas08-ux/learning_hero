import 'package:flutter/material.dart';

import '../../core/routes/app_routes.dart';
import '../../core/theme/app_colors.dart';
import '../../shared/widgets/primary_button.dart';
import '../../shared/widgets/safe_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          const Icon(
            Icons.auto_stories_rounded,
            size: 120,
            color: AppColors.primary,
          ),
          const SizedBox(height: 24),
          const Text(
            'Welcome to Learning Hero',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Learn programming through fun interactive lessons.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          const Spacer(),
          PrimaryButton(
            text: 'Start Learning',
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.home,
              );
            },
          ),
        ],
      ),
    );
  }
}
