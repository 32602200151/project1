import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String question;
  final List<String> answerOptions;

  const QuizCardWidget({required this.question, required this.answerOptions, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Tepi radius
      ),
      color: const Color(0xFF8978F4), // Warna ungu
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.question_mark, color: Colors.white), // Gambar circle pertanyaan
            ),
            const SizedBox(height: 10),
            Text(
              question,
              style: const TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
