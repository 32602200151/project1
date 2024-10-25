// lib/features/course_display/screen/HomeScreen.dart
import 'package:flutter/material.dart';
import '../../../core/constants/images.dart'; // Ensure correct import for AppImages
import '../../course_display/widgets/AvatarWidget.dart';
import '../../course_display/widgets/ContinueLearningWidget.dart';
import '../../course_display/widgets/CourseCardWidget.dart';
import '../../course_display/widgets/NavigationBarWidgets.dart';
import '../../../core/constants/string.dart'; // Ensure correct import for AppStrings

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Latar belakang hitam
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(), // Menambahkan header dengan nama pengguna
            const SizedBox(height: 20),
            const Text(
              AppStrings.newCourses, // Use string from AppStrings
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildNewCourses(), // Menambahkan kursus baru
            const SizedBox(height: 20),
            const Text(
              AppStrings.continueLearning, // Use string from AppStrings
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ContinueLearningWidget(), // Menambahkan widget belajar
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarWidget(), // Menambahkan navbar di bawah
    );
  }

  // Widget untuk menampilkan header dengan nama pengguna
  Widget _buildHeader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AvatarWidget(name: 'Alan Williams'), // Menampilkan avatar dengan nama pengguna
      ],
    );
  }

  // Widget untuk menampilkan kursus baru
  Widget _buildNewCourses() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CourseCardWidget(
          title: AppStrings.design, // Fetch course title from AppStrings
          courseCount: '17 courses',
          color: Colors.purple,
          imagePath: AppImages.design, // Pass the design image
        ),
        CourseCardWidget(
          title: AppStrings.programming, // Fetch course title from AppStrings
          courseCount: '8 courses',
          color: Colors.pink,
          imagePath: AppImages.programming, // Pass the programming image
        ),
        CourseCardWidget(
          title: AppStrings.language, // Fetch course title from AppStrings
          courseCount: '13 courses',
          color: Colors.orange,
          imagePath: AppImages.language, // Pass the language image
        ),
      ],
    );
  }
}
