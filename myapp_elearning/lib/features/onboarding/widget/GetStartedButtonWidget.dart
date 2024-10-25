// lib/features/onboarding/widget/GetStartedButtonWidget.dart
import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class GetStartedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const GetStartedButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkerColor, // Ganti 'primary' dengan 'backgroundColor'
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Mengatur radius tombol
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40), // Meningkatkan padding tombol
        textStyle: const TextStyle(fontSize: 24), // Meningkatkan ukuran font
      ),
      child: const Text(
        'Get Started',
        style: TextStyle(color: Colors.white), // Warna teks tombol
      ),
    );
  }
}

