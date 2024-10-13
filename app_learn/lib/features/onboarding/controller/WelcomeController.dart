import 'package:flutter/material.dart';
import '../course_display/screen/home_screen.dart';

class WelcomeController {
  void navigateToHomeScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
