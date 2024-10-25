// core/global_component/NetworkImageLoader.dart
import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  final String imageUrl;

  const NetworkImageLoader({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child; // Tampilkan gambar jika sudah dimuat
        return Center(
          child: CircularProgressIndicator(value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
              : null),
        ); // Tampilkan loader saat menunggu
      },
      fit: BoxFit.cover, // Sesuaikan dengan ukuran
    );
  }
}
