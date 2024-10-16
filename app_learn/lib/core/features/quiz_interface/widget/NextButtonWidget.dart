import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  final VoidCallback onNext;

  const NextButtonWidget({required this.onNext, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onNext,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF8978F4), // Warna ungu
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Button radius
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Next Question",
            style: TextStyle(color: Colors.white),
          ),
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}
