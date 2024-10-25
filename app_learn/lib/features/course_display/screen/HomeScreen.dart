// lib/features/course_display/screen/HomeScreen.dart
import 'package:flutter/material.dart';
import '../../../../data/course/model_responses/CourseResponse.dart';
import '../widgets/CourseCardWidgets.dart';  // Pastikan penamaannya benar
import '../widgets/AvatarWidgets.dart';      // Pastikan penamaannya benar
import '../widgets/ContinueLearningWidgets.dart'; // Pastikan penamaannya benar
import '../widgets/NavigationBarWidgets.dart';     // Pastikan penamaannya benar
import '../widgets/CourseCardWidgets.dart';

class HomeScreen extends StatelessWidget {
  final List<CourseResponse> courses; // Pastikan ini menggunakan CourseResponse

  const HomeScreen({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView(
        children: courses.map((course) {
          // Pastikan course adalah CourseResponse
          return CourseCardWidget(
            title: course.title,
            subtitle: course.subtitle,
          );
        }).toList(),
      ),
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}