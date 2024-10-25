// lib/features/quiz_interface/controller/QuizController.dart
import '../../../data/quizzes/Dummy/DummyQuiz.dart';
import '../../../data/quizzes/model_responses/QuizResponse.dart';

class QuizController {
  List<QuizResponse> questions = DummyQuiz.questions;
  int currentQuestionIndex = 0;
  int? selectedAnswer; // Menyimpan jawaban yang dipilih

  QuizResponse get currentQuestion => questions[currentQuestionIndex];

  void selectAnswer(int index) {
    selectedAnswer = index; // Simpan jawaban yang dipilih
    print("Selected Answer: $index");
  }

  void nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      currentQuestionIndex++;
      selectedAnswer = null; // Reset selected answer when moving to the next question
    }
  }
}
