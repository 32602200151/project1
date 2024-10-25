import 'package:flutter/material.dart';
import '../controller/WelcomeController.dart';
import '../widget/WelcomeIllustrationWidget.dart';
import '../widget/GetStartedButtonWidget.dart';
import '../../../core/constants/colors.dart'; // Correct path for colors
import '../../../core/constants/strings.dart'; // Correct path for strings

class WelcomeScreen extends StatelessWidget {
  final WelcomeController welcomeController = WelcomeController();

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPurple, // Use the light purple from AppColors
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WelcomeIllustrationWidget(
            title: AppStrings.title, // Use string from AppStrings
            description: AppStrings.description, // Use string from AppStrings
            imageUrl: 'assets/images/welcomescreen.png', // Your local image asset
          ),
          const SizedBox(height: 20),
          GetStartedButtonWidget(
            onPressed: welcomeController.navigateToHome,
          ),
        ],
      ),
    );
  }
}
