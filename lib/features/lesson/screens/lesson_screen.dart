import 'package:flutter/material.dart';

import '../models/lesson.dart';

class LessonScreen extends StatelessWidget {
  final Lesson lesson;

  const LessonScreen({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Text(
          lesson.description,
          style: const TextStyle(
            fontSize: 18,
            height: 1.7,
          ),
        ),
      ),
    );
  }
}
