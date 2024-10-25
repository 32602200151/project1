import 'package:flutter/material.dart';
import '../controller/QuizController.dart';
import '../../../core/constants/color.dart';

class AnswerOptionWidget extends StatelessWidget {
  final QuizController quizController;
  final int index;
  final VoidCallback onPressed;

  const AnswerOptionWidget({
    super.key,
    required this.quizController,
    required this.index,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Check if the selected answer is the current index
    bool isSelected = quizController.selectedAnswer == index;

    return GestureDetector(
      onTap: () {
        quizController.selectAnswer(index); // Memilih jawaban
        onPressed(); // Memperbarui tampilan
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor, // Set default background color
          borderRadius: BorderRadius.circular(24),
          border: isSelected
              ? Border.all(
                  color: AppColors.primaryColor, // Border for selected answer
                  width: 2,
                )
              : Border.all(
                  color: Colors.transparent, // No border when not selected
                  width: 2,
                ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        margin: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            quizController.currentQuestion.options[index],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}