import 'package:flutter/material.dart';
import '../../../core/constants/color.dart'; // Import the strings file
import '../../../core/constants/image.dart'; 
import '../../../core/constants/string.dart'; 

class WelcomeIllustrationWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl; 

  const WelcomeIllustrationWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl), // Use local image
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Set text color to white
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(color: Colors.white), // Set text color to white
        ),
      ],
    );
  }
}
