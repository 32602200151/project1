import 'package:flutter/material.dart';
import '../utils/route_utils.dart'; // Pastikan path ini benar
class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Tambahkan 'const'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Learn',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
      routes: RouteUtils.getRoutes(),  // Gunakan RouteUtils untuk memuat semua route
    );
  }
}
