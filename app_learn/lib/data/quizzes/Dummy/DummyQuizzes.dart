import '../model_responses/QuizResponse.dart';

class DummyQuizzes {
  static List<QuizResponse> getQuizzes() {
    return [
      QuizResponse(
        pertanyaan: "What is Flutter?",
        jawaban: ["Framework", "Language", "Library", "IDE"],
      ),
      // Tambah dummy data lainnya
    ];
  }
}
