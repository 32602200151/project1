import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const NextButtonWidget({super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}
