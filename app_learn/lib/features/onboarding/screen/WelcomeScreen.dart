import 'package:flutter/material.dart';
import '../widget/GetStartedButtonWidget.dart';
import '../widget/WelcomeIllustrationWidget.dart';
import '../controller/WelcomeController.dart';

class WelcomeScreen extends StatelessWidget {
  final WelcomeController welcomeController = WelcomeController();

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WelcomeIllustrationWidget(),
          const SizedBox(height: 40),
          GetStartedButtonWidget(
            onPressed: () {
              welcomeController.navigateToHomeScreen(context);
            },
          ),
        ],
      ),
    );
  }
}
