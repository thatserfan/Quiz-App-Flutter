import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 49, 8, 88),
                Color.fromARGB(255, 83, 7, 99),
              ],
            ),
          ),
          child: const StartScreeen(),
        ),
      ),
    ),
  );
}
