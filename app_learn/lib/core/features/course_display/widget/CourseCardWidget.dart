// lib/core/features/course_display/widgets/CourseCardWidget.dart
import 'package:flutter/material.dart';
import '../../../../data/course/model_responses/CourseResponse.dart';

class CourseCardWidget extends StatelessWidget {
  final CourseResponse courseResponse; // Parameter yang sesuai

  // Perhatikan bahwa parameter namanya 'courseResponse'
  const CourseCardWidget({super.key, required this.courseResponse});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(courseResponse.title), // Menggunakan courseResponse
          Text('Total Courses: ${courseResponse.courseCount}'), // Menggunakan courseResponse
        ],
      ),
    );
  }
}
