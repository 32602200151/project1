import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String imageUrl;

  const AvatarWidget({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight, // Circle avatar di sudut kanan
      child: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }
}
