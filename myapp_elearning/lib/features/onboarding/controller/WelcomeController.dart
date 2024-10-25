// features/onboarding/controller/WelcomeController.dart
import 'package:flutter/material.dart';

class WelcomeController {
  void navigateToHomeScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home'); // Navigasi ke HomeScreen
  }
}
