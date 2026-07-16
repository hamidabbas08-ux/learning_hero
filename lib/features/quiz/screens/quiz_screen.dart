import 'package:flutter/material.dart';
import '../data/java_quiz.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int selectedOption = -1;

  @override
  Widget build(BuildContext context) {
    final question = javaQuiz[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Java Quiz"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question ${currentQuestion + 1} of ${javaQuiz.length}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ...List.generate(question.options.length, (index) {
              return Card(
                child: RadioListTile<int>(
                  value: index,
                  groupValue: selectedOption,
                  title: Text(question.options[index]),
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
              );
            }),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedOption == -1) return;

                  if (currentQuestion < javaQuiz.length - 1) {
                    setState(() {
                      currentQuestion++;
                      selectedOption = -1;
                    });
                  }
                },
                child: Text(
                  currentQuestion == javaQuiz.length - 1
                      ? "Finish"
                      : "Next",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
