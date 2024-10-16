import 'package:flutter/material.dart';

class GetStartedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const GetStartedButtonWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Get started', style: TextStyle(color: Colors.white)), // White text color
          SizedBox(width: 5), // Space between text and icon
          Icon(Icons.arrow_forward, color: Colors.white), // Forward arrow icon
        ],
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple, // Use backgroundColor instead of primary
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Button radius
        ),
      ),
    );
  }
}
