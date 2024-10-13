import 'package:flutter/material.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  const WelcomeIllustrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/welcomescreen.jpeg', height: 200),
        const SizedBox(height: 20),
        const Text(
          "Immersion in the world of knowledge",
          style: TextStyle(color: Colors.white, fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const Text(
          "Learn programming, design, and business",
          style: TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
