import 'package:flutter/material.dart';

import '../lesson/screens/lesson_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Hero'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.school),
              label: const Text(
                'Start Java Course',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LessonListScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
