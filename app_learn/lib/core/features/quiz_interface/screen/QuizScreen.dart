import 'package:flutter/material.dart';
import '../widgets/QuizCardWidget.dart';
import '../widgets/AnswerOptionWidget.dart';
import '../widgets/NextButtonWidget.dart';
import '../widgets/ProgressBarComponent.dart';
import '../../../data/quizzes/dummy/DummyQuizzes.dart';

class QuizScreen extends StatelessWidget {
  final int questionIndex;

  const QuizScreen({super.key, this.questionIndex = 0});

  @override
  Widget build(BuildContext context) {
    var quizData = DummyQuizzes.getQuizzes();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProgressBarComponent(progress: 0.32), // Tampilan progress bar
          QuizCardWidget(
            question: quizData[questionIndex].pertanyaan,
            answerOptions: quizData[questionIndex].jawaban,
          ),
          const SizedBox(height: 10),
          NextButtonWidget(onNext: () {
            // Logika untuk next question
          }),
        ],
      ),
    );
  }
}
