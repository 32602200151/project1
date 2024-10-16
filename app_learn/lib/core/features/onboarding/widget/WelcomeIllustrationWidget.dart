// lib/core/features/onboarding/widgets/WelcomeIllustrationWidget.dart
import 'package:flutter/material.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl; // Parameter baru untuk URL gambar

  const WelcomeIllustrationWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl, // Parameter harus ada di sini
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl), // Menggunakan URL gambar
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(description),
      ],
    );
  }
}
