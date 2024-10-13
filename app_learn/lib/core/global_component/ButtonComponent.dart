import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonComponent({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF8978f4), // Warna ungu gelap
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Button dengan radius
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
