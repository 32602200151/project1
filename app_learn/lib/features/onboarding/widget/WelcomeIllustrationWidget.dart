import 'package:flutter/material.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl; // Added imageUrl parameter

  const WelcomeIllustrationWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl, // Include imageUrl in constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Display the illustration
        Image.asset(
          imageUrl,
          height: 500, // Adjust the height as needed
          width: 500, // Adjust the width as needed
          fit: BoxFit.cover, // Fit the image within the box
        ),
        SizedBox(height: 20),
        Text(
          title, // Display the title
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          description, // Display the description
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
