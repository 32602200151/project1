// lib/core/features/onboarding/widgets/GetStartedButtonWidget.dart
import 'package:flutter/material.dart';

class GetStartedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed; // Menentukan parameter untuk callback

  const GetStartedButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF8978F4), // Warna ungu gelap
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Radius tombol
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Get Started',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward, color: Colors.white), // Ikon anak panah
        ],
      ),
    );
  }
}
