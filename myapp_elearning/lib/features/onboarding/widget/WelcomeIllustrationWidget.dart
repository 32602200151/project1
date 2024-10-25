import 'package:flutter/material.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  final String title;
  final String description; // Menambahkan parameter deskripsi
  final String imageUrl; // Menambahkan parameter imageUrl

  const WelcomeIllustrationWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl, // Menambahkan imageUrl sebagai parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Menambahkan padding kiri dan kanan
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Memusatkan konten
        crossAxisAlignment: CrossAxisAlignment.start, // Mengatur konten mulai dari kiri
        children: [
          Image.asset(imageUrl),
          const SizedBox(height: 20), // Spasi antara gambar dan teks
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Menambahkan warna teks putih
            ),
          ),
          const SizedBox(height: 10), // Spasi antara judul dan deskripsi
          Text(
            description, // Menampilkan deskripsi
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70, // Warna teks deskripsi
            ),
          ),
        ],
      ),
    );
  }
}
