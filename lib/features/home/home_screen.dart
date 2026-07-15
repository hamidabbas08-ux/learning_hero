import 'package:flutter/material.dart';

import '../../shared/widgets/safe_screen.dart';
import '../../shared/widgets/section_title.dart';
import '../../shared/widgets/app_card.dart';
import '../../core/constants/app_spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeScreen(
      child: ListView(
        children: const [
          SectionTitle(
            title: 'Learning Hero',
            subtitle: 'Choose a learning category',
          ),

          SizedBox(height: AppSpacing.sectionGap),

          AppCard(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Categories will appear here.',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
