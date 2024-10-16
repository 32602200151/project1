// lib/data/course/dummy/DummyCourses.dart
import '../model_responses/CourseResponse.dart';

class DummyCourses {
  static List<CourseResponse> getDummyCourses() {
    return [
      CourseResponse(title: 'Programming 101', subtitle: 'Learn programming basics'),
      CourseResponse(title: 'Design Basics', subtitle: 'Fundamentals of design'),
      CourseResponse(title: 'Business and Finance', subtitle: 'Understanding the business world'),
    ];
  }
}
