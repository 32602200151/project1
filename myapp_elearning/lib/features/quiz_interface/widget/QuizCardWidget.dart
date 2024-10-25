import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class QuestionCardWidget extends StatelessWidget {
  final String imageUrl;
  final String question;
  final int currentQuestionNumber; // Nomor soal
  final int totalQuestions; // Total soal

  const QuestionCardWidget({
    super.key,
    required this.question,
    required this.imageUrl,
    required this.currentQuestionNumber,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Card(
      color: AppColors.primaryColor, // Warna kartu utama
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Membulatkan sudut kartu
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar lingkaran di kiri atas
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white24, // Warna background lingkaran
                  radius: screenHeight * 0.05, // Ukuran lingkaran dinamis
                  backgroundImage: NetworkImage(imageUrl),
                  onBackgroundImageError: (error, stackTrace) => const Icon(
                    Icons.image_not_supported,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const Spacer(), // Untuk memberi jarak di kanan
                // Nomor soal di kanan atas
                Text(
                  '$currentQuestionNumber/$totalQuestions', // Format nomor soal
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Menambahkan jarak antara gambar dan pertanyaan

            // Box pertanyaan
            Container(
              width: double.infinity, // Membuat box selebar mungkin sesuai layar
              constraints: BoxConstraints(
                minHeight: screenHeight * 0.15, // Mengatur tinggi minimum dinamis
                maxHeight: screenHeight * 0.3,  // Mengatur tinggi maksimum dinamis
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryColor, // Warna box sama dengan warna primary
                borderRadius: BorderRadius.circular(15), // Membulatkan sudut
              ),
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.02, // Padding vertikal dinamis
                horizontal: screenWidth * 0.05, // Padding horizontal dinamis
              ),
              child: Text(
                question,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.025, // Ukuran teks dinamis
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
