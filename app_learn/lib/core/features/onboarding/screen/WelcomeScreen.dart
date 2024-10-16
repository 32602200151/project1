import 'package:flutter/material.dart';
import '../controller/WelcomeController.dart';
import '../widget/WelcomeIllustrationWidget.dart';
import '../widget/GetStartedButtonWidget.dart';

class WelcomeScreen extends StatelessWidget {
  final WelcomeController welcomeController = WelcomeController();

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8978F4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const WelcomeIllustrationWidget(
            title: 'Immersion in the World Knowledge',
            description: 'Get started with your learning journey!',
            imageUrl: 'https://example.com/welcomescreen_image.png', // Replace with valid URL
          ),
          const SizedBox(height: 20),
          GetStartedButtonWidget(
            onPressed: () => welcomeController.navigateToHome(), // Correct callback
          ),
        ],
      ),
    );
  }
}
