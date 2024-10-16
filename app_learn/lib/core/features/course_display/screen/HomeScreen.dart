// lib/features/course_display/screen/HomeScreen.dart
import 'package:flutter/material.dart';
import '../../../../data/course/model_responses/CourseResponse.dart';
import '../widget/CourseCardWidget.dart';  // Pastikan penamaannya benar
import 'package:app_learn/core/features/course_display/widget/AvatarWidget.dart';      // Pastikan penamaannya benar
import '../widget/ContinueLearningWidget.dart'; // Pastikan penamaannya benar
import '../widget/NavigationBarWidget.dart';     // Pastikan penamaannya benar

class HomeScreen extends StatelessWidget {
  final List<CourseResponse> courses; // Daftar kursus

  const HomeScreen({Key? key, required this.courses}) : super(key: key); // Konstruktor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          AvatarWidget(imageUrl: 'https://example.com/path_to_avatar_image.png'), // Ganti dengan URL gambar yang sesuai
          Expanded(
            child: ListView(
              children: courses.map((course) => CourseCardWidget(courseResponse: course)).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavigationBarWidget(), // Pastikan Anda menggunakan kelas yang benar
    );
  }
}
