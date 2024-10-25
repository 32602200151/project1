import 'package:flutter/material.dart';
import '../../quiz_interface/screen/QuizScreen.dart'; // Pastikan path ini benar sesuai struktur proyek Anda
import '../../quiz_interface/controller/QuizController.dart'; // Import controller jika diperlukan

class HomeController {
  void navigateToQuiz(BuildContext context) {
    final quizController = QuizController(); // Buat instance QuizController

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QuizScreen(controller: quizController)), // Operasikan controller ke QuizScreen
    );
  }
}
