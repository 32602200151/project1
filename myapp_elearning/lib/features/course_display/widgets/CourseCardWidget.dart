import 'package:flutter/material.dart';

class CourseCardWidget extends StatelessWidget {
  final String title;
  final String courseCount;
  final Color color;
  final String imagePath; // Add imagePath parameter

  const CourseCardWidget({
    super.key,
    required this.title,
    required this.courseCount,
    required this.color,
    required this.imagePath, // Accept imagePath in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150, // Atur lebar sesuai kebutuhan
      decoration: BoxDecoration(
        color: color, // Warna latar belakang
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 50, // Adjust height as needed
            fit: BoxFit.cover, // Maintain aspect ratio
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            courseCount,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
