import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue, // Latar belakang warna biru
      body: Center(
        child: Text('Welcome to Home Screen!'),
      ),
    );
  }
}
