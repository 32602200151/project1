import 'package:flutter/material.dart';

class ContinueLearningWidget extends StatelessWidget {
  final String title;
  final double progress;

  const ContinueLearningWidget({super.key, required this.title, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: const Color(0xFF8978f4),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.book, color: Colors.white),
                const SizedBox(width: 8),
                Text('$progress% Complete', style: const TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress / 100,
              backgroundColor: Colors.white30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
