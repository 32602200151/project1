import 'package:flutter/material.dart';

class GetStartedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const GetStartedButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Get Started",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(width: 10),
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}
