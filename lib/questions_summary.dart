import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: changeColor(data),
                          width: 15,
                        ),
                        color: changeColor(data),
                      ),
                      child: Text(
                        ((data['qusetion_index'] as int) + 1).toString(),
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        data['qusetion'] as String,
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        textAlign: TextAlign.left,
                        data['user_answer'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        data['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

Color changeColor(Map<String, Object> data) {
  final bool isCorrect =
      (data['user_answer'] as String == data['correct_answer']);

  if (isCorrect) {
    return Colors.green;
  } else {
    return Colors.red;
  }
}
