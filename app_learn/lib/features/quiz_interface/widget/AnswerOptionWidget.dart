import 'package:flutter/material.dart';

class AnswerOptionWidget extends StatelessWidget {
  final List<String> options;
  final Function(String) onOptionSelected;

  const AnswerOptionWidget({super.key, required this.options, required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: options.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.5,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => onOptionSelected(options[index]),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.purple,
                width: 2,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              options[index],
              style: const TextStyle(color: Colors.purple, fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
