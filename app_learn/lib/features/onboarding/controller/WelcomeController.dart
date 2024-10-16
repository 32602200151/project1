import 'package:flutter/material.dart';

class WelcomeController {
  void navigateToNextScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home'); // Ensure '/home' route is defined
  }
}
