import 'package:flutter/material.dart';

import '../data/java_lessons.dart';
import 'lesson_screen.dart';

class LessonListScreen extends StatelessWidget {
  const LessonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Java Lessons'),
      ),
      body: ListView.builder(
        itemCount: javaLessons.length,
        itemBuilder: (context, index) {
          final lesson = javaLessons[index];

          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(lesson.title),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonScreen(
                      lesson: lesson,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
