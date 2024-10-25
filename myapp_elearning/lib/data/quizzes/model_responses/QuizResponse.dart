// lib/data/quizzes/model_responses/QuizResponse.dart
class QuizResponse {
  final String question;
  final String imageUrl; // Pastikan ada field imageUrl
  final List<String> options;
  final String correctAnswer;

  QuizResponse({
    required this.question,
    required this.imageUrl, // Pastikan field ini ada
    required this.options,
    required this.correctAnswer,
  });
}