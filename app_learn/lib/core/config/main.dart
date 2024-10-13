import 'package:flutter/material.dart';
import '../utils/route_utils.dart'; // Pastikan jalur ini sesuai dengan struktur proyek Anda

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Your App',
      initialRoute: RouteUtils.initialRoute,  // Set the initial route
      onGenerateRoute: RouteUtils.generateRoute,  // Set the routing logic
    );
  }
}
