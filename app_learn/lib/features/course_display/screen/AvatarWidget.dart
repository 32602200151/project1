import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String imageUrl;

  const AvatarWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }
}
