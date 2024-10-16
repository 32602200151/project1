import 'package:get/get.dart';
import '../../../data/quizzes/dummy/DummyQuizzes.dart';

class QuizController extends GetxController {
  var currentQuestionIndex = 0.obs;
  var progress = 0.0.obs;
  var quizData = DummyQuizzes.getQuizzes().obs;

  void checkAnswer(String selectedAnswer) {
    // Logika cek jawaban
  }

  void nextQuestion() {
    currentQuestionIndex++;
    progress.value = currentQuestionIndex.value / quizData.length;
  }
}
