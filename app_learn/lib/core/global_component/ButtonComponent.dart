import 'package:flutter/material.dart';

ElevatedButton(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.purple.shade900),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
  ),
  onPressed: () {},
  child: Text('Get Started', style: TextStyle(color: Colors.white)),
);
