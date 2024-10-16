import 'package:get/get.dart';
import '../../course_display/screen/HomeScreen.dart';

class WelcomeController extends GetxController {
  // Method to navigate to HomeScreen
  void navigateToHome() {
    Get.to(() => const HomeScreen(courses: [])); // Navigate to HomeScreen
  }
}
