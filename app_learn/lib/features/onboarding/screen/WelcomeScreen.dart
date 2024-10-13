import 'package:flutter/material.dart';
import 'widgets/welcome_illustration_widget.dart';
import 'widgets/get_started_button_widget.dart';
import 'welcome_controller.dart';

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
