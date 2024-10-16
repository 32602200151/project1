// lib/features/course_display/widgets/AvatarWidget.dart
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String imageUrl;

  const AvatarWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl), // Atau gunakan asset
      radius: 30,
    );
  }
}
