import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  final String imageUrl;

  const NetworkImageLoader({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                : null,
          ),
        );
      },
      cacheWidth: 400, // Optimalisasi ukuran gambar
    );
  }
}
