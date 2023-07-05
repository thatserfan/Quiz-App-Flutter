import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestartQuiz,
  });

  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> sammary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      sammary.add({
        'qusetion_index': i,
        'qusetion': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return sammary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Answerd $numCorrectQuestions of $numTotalQuestions Questions Correctly!",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            SizedBox(height: 15),
            AnswerButton(
              answerText: "Restart Quiz!",
              onTap: onRestartQuiz,
            )
            // TextButton(
            //   onPressed: () {},
            //   child: const Text("Restart Quiz!"),
            // ),
          ],
        ),
      ),
    );
  }
}
