import 'package:flutter/material.dart';

class ProgressBarComponent extends StatelessWidget {
  final double progress; // 0-1 range

  const ProgressBarComponent({required this.progress, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Text(
            'Progress: ${(progress * 100).toInt()}%', // Warna text bisa diisi manual
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            color: Colors.purple,
            backgroundColor: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
