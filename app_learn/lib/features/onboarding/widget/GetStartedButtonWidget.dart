import 'package:flutter/material.dart';
import '../../../core/constants/color.dart'; // Import the strings file
import '../../../core/constants/image.dart'; 
import '../../../core/constants/string.dart'; 

class GetStartedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const GetStartedButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple, // Use dark purple color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Rounded button
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppStrings.getStarted, // Use string from AppStrings
            style: const TextStyle(color: Colors.white), // Set text color to white
          ),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_forward, color: Colors.white), // Arrow icon
        ],
      ),
    );
  }
}
