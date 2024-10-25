import 'package:flutter/material.dart';
import 'package:myapp_elearning/core/constants/string.dart';
import '../../quiz_interface/controller/QuizController.dart';
import '../../quiz_interface/widget/AnswerOptionWidget.dart';
import '../../quiz_interface/widget/NextButtonWidget.dart';
import '../../quiz_interface/widget/ProgressBarComponent.dart';
import '../../../core/constants/color.dart';
import '../../quiz_interface/widget/QuizCardWidget.dart'; // Include the QuestionCardWidget

class QuizScreen extends StatefulWidget {
  final QuizController controller;

  const QuizScreen({super.key, required this.controller});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    // Menggunakan MediaQuery untuk mendapatkan ukuran layar
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Scaffold(
       backgroundColor: AppColors.darkerColor, // Set background to darkerColor
      appBar: AppBar(
        title: const Text(
          AppStrings.pythonForBeginners,
          style: TextStyle(color: Colors.white), // Menambahkan warna putih
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Progress bar di bagian atas
            Stack(
              children: [
                // Bar progres
                ProgressBarComponent(
                  progress: widget.controller.currentQuestionIndex / widget.controller.questions.length,
                  currentStep: widget.controller.currentQuestionIndex + 1, // Pass current step (1-based)
                  totalSteps: widget.controller.questions.length,          // Pass total steps
                  showPercentage: true,                                   // Option to show percentage
                ),
                // Nomor soal yang sudah dan belum selesai
               
              ],
            ),
            const SizedBox(height: 16),

            // Question Card with image and question text
            QuestionCardWidget(
              question: widget.controller.currentQuestion.question,
              imageUrl: widget.controller.currentQuestion.imageUrl,
              currentQuestionNumber: widget.controller.currentQuestionIndex + 1,
              totalQuestions: widget.controller.questions.length,
            ),
            const SizedBox(height: 16),

            // Answer Options Grid (2x2 grid)
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 kolom
                  crossAxisSpacing: screenWidth * 0.04, // Jarak antar kolom dinamis
                  mainAxisSpacing: screenHeight * 0.02, // Jarak antar baris dinamis
                  childAspectRatio: screenWidth / (screenHeight * 0.4), // Adjust aspect ratio based on screen
                ),
                itemCount: widget.controller.currentQuestion.options.length,
                itemBuilder: (context, index) {
                  return AnswerOptionWidget(
                    quizController: widget.controller,
                    index: index,
                    onPressed: () {
                      setState(() {}); // Update state when answer is selected
                    },
                  );
                },
              ),
            ),

            // Next Button (berukuran penuh)
            SizedBox(
              width: double.infinity,
              child: NextButtonWidget(
                onPressed: () {
                  setState(() {
                    widget.controller.nextQuestion();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}