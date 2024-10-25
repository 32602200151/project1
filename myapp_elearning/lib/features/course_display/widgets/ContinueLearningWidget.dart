import 'package:flutter/material.dart';
import '../../../data/course/dummy/DummyCourses.dart'; // Import dummy data
// Import halaman QuizScreen
import '../controller/HomeController.dart'; // Import HomeController

class ContinueLearningWidget extends StatelessWidget {
  const ContinueLearningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = DummyCourses.getCourses(); // Ambil data kursus dari DummyCourses
    final HomeController homeController = HomeController(); // Buat instance HomeController

    return SizedBox(
      height: 300, // Atur tinggi untuk menghindari error layout
      child: SingleChildScrollView( // Membungkus dengan SingleChildScrollView
        child: Column(
          children: List.generate(courses.length, (index) {
            final course = courses[index]; // Ambil tiap kursus dari data

            return Card(
              color: Colors.grey[850], // Latar belakang gelap
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Panggil metode di HomeController saat gambar diklik
                        homeController.navigateToQuiz(context);
                      },
                      child: Image.asset(
                        course.imageUrl, // Gambar dinamis berdasarkan data
                        width: 40, // Atur ukuran gambar
                        height: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course.courseTitle, // Judul kursus dinamis
                            style: const TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${course.courseCount} lessons', // Jumlah kursus dinamis
                            style: const TextStyle(color: Colors.white70),
                          ),
                          const SizedBox(height: 5),
                          const LinearProgressIndicator(
                            value: 0.72, // Contoh progress
                            backgroundColor: Colors.white30,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
