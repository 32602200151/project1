// core/global_component/AvatarComponent.dart
import 'package:flutter/material.dart';
import '../../../core/constants/images.dart';

class AvatarComponent extends StatelessWidget {
  const AvatarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight, // Posisi di sebelah kanan
      child: ClipOval(
        child: Image.asset(
          AppImages.avatar, // Gambar avatar
          width: 100, // Ukuran yang diinginkan, bisa disesuaikan
          height: 100, // Ukuran yang diinginkan
          fit: BoxFit.cover, // Memastikan gambar mengisi area
        ),
      ),
    );
  }
}
