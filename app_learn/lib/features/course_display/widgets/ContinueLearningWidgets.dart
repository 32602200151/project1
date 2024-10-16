import 'package:flutter/material.dart';

class ContinueLearningWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final int progress;

  const ContinueLearningWidget({
    required this.title,
    required this.subtitle,
    required this.progress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Tepi melengkung
      ),
      color: const Color(0xFF8978F4), // Warna latar belakang ungu
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.book, color: Colors.white), // Icon learning course
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              '$progress% Complete', // Progress lengkap
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 5),
            LinearProgressIndicator(
              value: progress / 100, // Progress bar indikator kemajuan
              backgroundColor: Colors.white24,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
