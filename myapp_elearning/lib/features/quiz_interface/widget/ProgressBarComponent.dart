// lib/features/quiz_interface/widgets/ProgressBarComponent.dart
import 'package:flutter/material.dart';

class ProgressBarComponent extends StatelessWidget {
  final double progress;
  final int currentStep;  // current step in x/y format
  final int totalSteps;   // total steps
  final bool showPercentage;  // Toggle between percentage or x/y display

  const ProgressBarComponent({
    super.key,
    required this.progress,
    required this.currentStep,
    required this.totalSteps,
    this.showPercentage = true,  // default: show percentage
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Linear progress bar
        Expanded(
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey, // Background color
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.white), // Progress color (white)
            minHeight: 5, // Height of the progress bar
          ),
        ),
        const SizedBox(width: 10),  // Add space between progress bar and text
        // Text displaying either percentage or x/y format
        Text(
          showPercentage
              ? "${(progress * 100).toInt()}%" // Display percentage if showPercentage is true
              : "$currentStep/$totalSteps", // Otherwise, display x/y format
          style: const TextStyle(
            color: Colors.white, // Text color
            fontWeight: FontWeight.bold, // Bold font for better visibility
          ),
        ),
      ],
    );
  }
}