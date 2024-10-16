import 'package:flutter/material.dart';
import '../../onboarding/widget/GetStartedButtonWidget.dart';
import '../../onboarding/widget/WelcomeIllustrationWidget.dart';
import '../../onboarding/controller/WelcomeController.dart';
import '../../../core/constants/color.dart'; 
import '../../../core/constants/string.dart'; // Make sure to import the strings.dart file

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.lightPurple, // Use the purple color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeIllustrationWidget(
              title: AppStrings.immersionKnowledge, // Pass title
              description: AppStrings.description, // Pass description
              imageUrl: 'assets/images/Welcome.png', // Pass the image URL
            ),
            SizedBox(height: 20), // Add some space before the button
            GetStartedButtonWidget(onPressed: () {
              // Navigate to the home screen
            }),
          ],
        ),
      ),
    );
  }
}
