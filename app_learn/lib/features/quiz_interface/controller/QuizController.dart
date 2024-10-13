import 'dummy/dummy_quiz.dart';

class QuizController {
  int currentIndex = 0;
  List<String> currentOptions = DummyQuiz().getOptions();
  String currentQuestion = DummyQuiz().getQuestion();
  double progress = 0.0;

  void nextQuestion() {
    currentIndex++;
    currentQuestion = DummyQuiz().getQuestionAt(currentIndex);
    currentOptions = DummyQuiz().getOptionsAt(currentIndex);
    progress = (currentIndex + 1) / DummyQuiz().totalQuestions();
  }

  void checkAnswer(String answer) {
    // Implementasi cek jawaban
  }
}
