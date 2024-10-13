import 'package:flutter/material.dart';
import '../features/course_display/screen/HomeScreen.dart';
import '../features/quiz_interface/screen/QuizScreen.dart';
import '../features/onboarding/screen/WelcomeScreen.dart';

class RouteUtils {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (context) => WelcomeScreen(),
      '/home': (context) => HomeScreen(),
      '/quiz': (context) => QuizScreen(),
    };
  }
}
