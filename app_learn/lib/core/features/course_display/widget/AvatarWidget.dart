import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String imageUrl;

  AvatarWidget({required this.imageUrl});

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
