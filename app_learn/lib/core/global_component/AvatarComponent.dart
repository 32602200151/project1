import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String imageUrl;

  const AvatarComponent({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight, // Avatar di sebelah kanan
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        radius: MediaQuery.of(context).size.width * 0.1, // Ukuran menyesuaikan layar
      ),
    );
  }
}
