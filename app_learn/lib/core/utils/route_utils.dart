import 'package:flutter/material.dart';
import 'package:app_learn/core/features/onboarding/screen/WelcomeScreen.dart';
import '../features/course_display/screen/HomeScreen.dart';
import 'package:app_learn/core/features/quiz_interface/screen/QuizScreen.dart';

class RouteUtils {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (context) => WelcomeScreen(),
      '/home': (context) => HomeScreen(),
      '/quiz': (context) => QuizScreen(),
    };
  }
}