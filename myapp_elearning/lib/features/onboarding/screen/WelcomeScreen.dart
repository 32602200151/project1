import 'package:flutter/material.dart';
import 'package:myapp_elearning/core/constants/images.dart';
import '../../../core/constants/color.dart'; // Pastikan jalur ini benar
import '../../../core/constants/string.dart'; // Pastikan jalur ini benar
import '../../course_display/screen/HomeScreen.dart';
import '../widget/WelcomeIllustrationWidget.dart'; // Pastikan jalur ini benar
import '../widget/GetStartedButtonWidget.dart'; // Pastikan jalur ini benar

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor, // Use the purple color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WelcomeIllustrationWidget(
              title: AppStrings.title, // Pass title
              description: AppStrings.description, // Pass description
              imageUrl: AppImages.welcomeScreen, // Pass the image URL
            ),
            const SizedBox(height: 20), // Add some space before the button
            GetStartedButtonWidget(
              onPressed: () {
                // Navigate to the home screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

