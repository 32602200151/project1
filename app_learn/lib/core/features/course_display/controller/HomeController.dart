import 'package:get/get.dart';
import '../../../data/course/dummy/DummyCourses.dart';

class HomeController extends GetxController {
  var courses = DummyCourses.getCourses().obs;

  // Fungsi saat icon lesson course diklik
  void goToQuizScreen() {
    Get.toNamed('/quiz');
  }
  
  // Jika berada di homescreen, set icon home berwarna putih
  void updateHomeIconState() {
    // Implementasi logika untuk icon home
  }
}
