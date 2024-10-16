// lib/core/features/onboarding/controller/WelcomeController.dart
import 'package:get/get.dart';
import '../../course_display/screen/HomeScreen.dart'; // Pastikan jalur ini benar

class WelcomeController extends GetxController {
  // Metode untuk navigasi ke HomeScreen
  void navigateToHome() {
    Get.to(() => const HomeScreen()); // Navigasi ke HomeScreen
  }
}
