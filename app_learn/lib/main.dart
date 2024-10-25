import 'package:flutter/material.dart';
import './features/onboarding/screen/WelcomeScreen.dart'; // Adjust the import as per your folder structure
// Import any other necessary packages

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(), // Change this line to use WelcomeScreen
    );
  }
}
