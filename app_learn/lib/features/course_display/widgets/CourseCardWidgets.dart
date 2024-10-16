import 'package:flutter/material.dart';

class CourseCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const CourseCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
