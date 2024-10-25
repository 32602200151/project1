// lib/core/global_component/ButtonComponent.dart
import 'package:flutter/material.dart';
import '../constants/color.dart'; // Pastikan ini mengarah ke warna yang Anda buat

class ButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ButtonComponent({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor, // Gunakan warna ungu gelap
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40.0),
        textStyle: const TextStyle(fontSize: 20), // Mengatur ukuran teks
      ),
      child: Text(label, style: const TextStyle(color: Colors.white)), // Warna teks putih
    );
  }
}
