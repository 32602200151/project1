import 'package:flutter/material.dart';

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
        Image.network(imageUrl), // Use the provided image URL
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(description),
      ],
    );
  }
}
