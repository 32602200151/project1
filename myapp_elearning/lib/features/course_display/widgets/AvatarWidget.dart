import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String name; // Menambahkan parameter untuk nama pengguna

  const AvatarWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25, // Ukuran avatar
          backgroundImage: AssetImage('assets/images/avatar.png'), // Ganti dengan jalur gambar yang sesuai
        ),
        const SizedBox(width: 10), // Memberikan jarak antara avatar dan nama
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Menyusun teks dari kiri
          children: [
            Text(
              name, // Nama pengguna
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna teks
              ),
            ),
            const Text(
              'Student', // Misalnya, role atau status pengguna
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70, // Warna teks untuk status
              ),
            ),
          ],
        ),
      ],
    );
  }
}
