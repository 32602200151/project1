import 'package:flutter/material.dart';

class ContinueLearningWidget extends StatelessWidget {
  final String title;
  final double progress;

  ContinueLearningWidget({required this.title, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Color(0xFF8978f4),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.book, color: Colors.white),
                SizedBox(width: 8),
                Text('$progress% Complete', style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: 8),
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
