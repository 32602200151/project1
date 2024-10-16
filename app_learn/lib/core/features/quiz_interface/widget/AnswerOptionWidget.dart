import 'package:flutter/material.dart';

class AnswerOptionWidget extends StatelessWidget {
  final List<String> options;
  final Function(String) onSelect;

  const AnswerOptionWidget({required this.options, required this.onSelect, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: options.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return ElevatedButton(
          onPressed: () => onSelect(options[index]),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // Warna button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // Radius
            ),
          ),
          child: Text(
            options[index],
            style: const TextStyle(color: Colors.black),
          ),
        );
      },
    );
  }
}
