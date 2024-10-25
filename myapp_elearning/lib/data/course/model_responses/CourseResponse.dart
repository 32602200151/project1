class CourseResponse {
  final String imageUrl; // URL atau path gambar kursus
  final String courseTitle; // Judul kursus
  final int courseCount; // Jumlah kursus

  CourseResponse({
    required this.imageUrl,
    required this.courseTitle,
    required this.courseCount,
  });
}
