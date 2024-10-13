import 'package:flutter/material.dart';

class WelcomeController {
  void navigateToHomeScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
