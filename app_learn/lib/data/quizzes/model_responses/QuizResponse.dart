class QuizResponse {
  final String pertanyaan;
  final List<String> jawaban;

  QuizResponse({required this.pertanyaan, required this.jawaban});

  factory QuizResponse.fromJson(Map<String, dynamic> json) {
    return QuizResponse(
      pertanyaan: json['pertanyaan'],
      jawaban: List<String>.from(json['jawaban']),
    );
  }
}
