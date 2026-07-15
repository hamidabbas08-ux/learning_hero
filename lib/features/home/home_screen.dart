import 'package:flutter/material.dart';

import '../../core/constants/app_spacing.dart';
import '../../shared/widgets/app_card.dart';
import '../../shared/widgets/safe_screen.dart';
import '../../shared/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeScreen(
      child: ListView(
        children: const [
          SectionTitle(
            title: 'Learning Hero',
            subtitle: 'Choose your learning path',
          ),

          SizedBox(height: AppSpacing.sectionGap),

          AppCard(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Java',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '0 / 100 Lessons Completed',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          AppCard(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Coming Soon',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
