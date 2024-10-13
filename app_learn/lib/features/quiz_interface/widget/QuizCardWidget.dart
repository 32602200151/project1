import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String question;

  const QuizCardWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(Icons.question_answer, color: Colors.purple),
          ),
          const SizedBox(height: 20),
          Text(
            question,
            style: const TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
