import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> sammary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      sammary.add({
        'qusetion_index' : i,
        'qusetion' : questions[i].text,
        'correct_answer' :  questions[i].answers[0],
        'user_answer' : chosenAnswers[i],
      });
    }

    return sammary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You Answerd 1 of 15 Questions Correctly!",
            ),
            const SizedBox(height: 30),
            const Text(
              "list of Q and A",
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}
