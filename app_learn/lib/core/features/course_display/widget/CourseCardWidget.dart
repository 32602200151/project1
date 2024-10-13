import 'package:flutter/material.dart';

class CourseCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  CourseCardWidget({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Tepi melengkung
      ),
      color: Color(0xFF8978f4), // Latar belakang ungu
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 8),
            Text(subtitle, style: TextStyle(color: Colors.white70, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
