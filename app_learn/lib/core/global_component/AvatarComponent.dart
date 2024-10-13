import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String imageUrl;
  
  const AvatarComponent({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.width * 0.1, // Sesuaikan ukuran layar
        backgroundImage: NetworkImage(imageUrl), // Gambar avatar
      ),
    );
  }
}
