import 'package:flutter/material.dart';
// Sesuaikan dengan struktur proyek Anda
import '../../features/course_display/screen/HomeScreen.dart'; // Pastikan Anda mengatur jalur ini sesuai dengan struktur proyek Anda
import '../../features/onboarding/screen/WelcomeScreen.dart';
import '../../features/quiz_interface/screen/QuizScreen.dart';
import '../../features/quiz_interface/controller/QuizController.dart'; // Tambahkan impor untuk QuizController
import '../utils/RouteUtils.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteUtils.welcome, // Ganti rute awal ke WelcomeScreen
      routes: {
        RouteUtils.welcome: (context) => const WelcomeScreen(), // Tambahkan rute untuk WelcomeScreen
        RouteUtils.home: (context) => const HomeScreen(),
        RouteUtils.quiz: (context) {
          final quizController = QuizController();
          return QuizScreen(controller: quizController);
        },
      },
    );
  }
}