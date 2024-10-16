import 'package:flutter/material.dart';
import '../features/onboarding/screen/WelcomeScreen.dart'; // Pastikan path ini benar
import '../features/course_display/screen/HomeScreen.dart'; // Pastikan path ini benar
import '../utils/route_utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteUtils.welcomeScreen,
      routes: {
        RouteUtils.welcomeScreen: (context) => WelcomeScreen(),
        RouteUtils.homeScreen: (context) => const HomeScreen(), // Pastikan HomeScreen terdefinisi
      },
    );
  }
}
