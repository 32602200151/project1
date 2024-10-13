import 'package:flutter/material.dart';
import 'package:app_learn/data/course/dummy/DummyCourses.dart';
import 'package:app_learn/core/utils/route_utils.dart';

class HomeController extends GetxController {
  // Variable untuk menyimpan data course
  var courses = [].obs;

  @override
  void onInit() {
    super.onInit();
    // Memuat data dummy courses saat inisialisasi
    loadDummyCourses();
  }

  // Fungsi untuk memuat data dummy
  void loadDummyCourses() {
    courses.assignAll(DummyCourses.getCourses());
  }

  // Fungsi saat icon lesson course di klik
  void onLessonCourseClicked() {
    Get.toNamed(RouteApp.quizScreen);
  }

  // Fungsi untuk mengecek apakah berada di HomeScreen
  bool isHomeScreen(String currentRoute) {
    return currentRoute == RouteApp.homeScreen;
  }
}
