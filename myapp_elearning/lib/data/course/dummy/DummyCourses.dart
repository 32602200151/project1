import '../model_responses/CourseResponse.dart';
import '../../../core/constants/images.dart'; // Import referensi gambar

class DummyCourses {
  static List<CourseResponse> getCourses() {
    return [
      CourseResponse(imageUrl: AppImages.pyt, courseTitle: 'Python for Beginners', courseCount: 10), // Judul kursus dan jumlah
      CourseResponse(imageUrl: AppImages.html, courseTitle: 'HTML 5', courseCount: 8),                 // Judul kursus dan jumlah
      CourseResponse(imageUrl: AppImages.cplusplus, courseTitle: 'C++ Backend', courseCount: 5),           // Judul kursus dan jumlah
      CourseResponse(imageUrl: AppImages.css, courseTitle: 'Basic CSS', courseCount: 6),               // Judul kursus dan jumlah
    ];
  }
}
