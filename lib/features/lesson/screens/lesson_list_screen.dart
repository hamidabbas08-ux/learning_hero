import 'package:flutter/material.dart';

import '../data/java_lessons.dart';

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

          return ListTile(
            leading: CircleAvatar(
              child: Text('${lesson.id}'),
            ),
            title: Text(lesson.title),
            subtitle: Text(lesson.description),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // اگلے مرحلے میں Lesson Screen کھلے گی۔
            },
          );
        },
      ),
    );
  }
}
