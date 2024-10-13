import 'package:flutter/material.dart';
import 'quiz_controller.dart';
import 'widgets/quiz_card_widget.dart';
import 'widgets/answer_option_widget.dart';
import 'widgets/next_button_widget.dart';
import 'widgets/progress_bar_component.dart';

class QuizScreen extends StatelessWidget {
  final QuizController quizController = QuizController();

  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          ProgressBarComponent(
            progress: quizController.progress, // Misalnya 32%
          ),
          const SizedBox(height: 20),
          QuizCardWidget(
            question: quizController.currentQuestion,
          ),
          const SizedBox(height: 20),
          AnswerOptionWidget(
            options: quizController.currentOptions,
            onOptionSelected: quizController.checkAnswer,
          ),
          const SizedBox(height: 20),
          NextButtonWidget(
            onPressed: quizController.nextQuestion,
            buttonText: "Next Question",
          ),
        ],
      ),
    );
  }
}
