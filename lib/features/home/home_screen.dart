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
        children: [
          const SectionTitle(
            title: 'Learning Hero',
            subtitle: 'Choose your learning path',
          ),

          const SizedBox(height: AppSpacing.sectionGap),

          AppCard(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.code),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Java Master Course',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text('100 Lessons'),
                        SizedBox(height: 4),
                        Text('Progress: 0%'),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          const AppCard(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'More courses coming soon...',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
