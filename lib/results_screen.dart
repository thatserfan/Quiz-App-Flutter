import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
