import '../model_responses/QuizResponse.dart';

class DummyQuiz {
  static List<QuizResponse> questions = [
    QuizResponse(
      question: 'Apa yang dimaksud dengan Python?',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: [
        'Bahasa pemrograman',
        'Jenis ular',
        'Framework web',
        'Editor teks'
      ],
      correctAnswer: 'Bahasa pemrograman', // Kunci jawaban
    ),
    QuizResponse(
      question: 'Apa ekstensi file untuk program Python?',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: ['.py', '.java', '.cpp', '.html'],
      correctAnswer: '.py', // Kunci jawaban
    ),
    QuizResponse(
      question: 'Bagaimana cara mencetak teks di Python?',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: [
        'print("Hello")',
        'console.log("Hello")',
        'echo "Hello"',
        'System.out.println("Hello")'
      ],
      correctAnswer: 'print("Hello")', // Kunci jawaban
    ),
    QuizResponse(
      question: 'Tipe data apa yang digunakan untuk bilangan desimal di Python?',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: ['float', 'int', 'double', 'decimal'],
      correctAnswer: 'float', // Kunci jawaban
    ),
    QuizResponse(
      question: 'Fungsi mana yang digunakan untuk mendapatkan panjang dari sebuah list di Python?',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: ['len()', 'size()', 'length()', 'count()'],
      correctAnswer: 'len()', // Kunci jawaban
    ),
    QuizResponse(
      question: 'Apa output dari kode berikut?\nprint(2 ** 3)',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: ['8', '6', '9', 'Error'],
      correctAnswer: '8', // Kunci jawaban
    ),
    QuizResponse(
      question: 'Bagaimana cara membuat komentar dalam satu baris di Python?',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: ['# Komentar', '// Komentar', '/* Komentar */', '<!-- Komentar -->'],
      correctAnswer: '# Komentar', // Kunci jawaban
    ),
    QuizResponse(
      question: 'Apa arti dari "PEP" dalam konteks Python?',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: [
        'Python Enhancement Proposal',
        'Python Execution Process',
        'Programming Error Python',
        'Python Easy Programming'
      ],
      correctAnswer: 'Python Enhancement Proposal', // Kunci jawaban
    ),
    QuizResponse(
      question: 'Apa library Python yang populer untuk data science?',
      imageUrl: 'assets/images/pyt.png', // Tambahkan URL gambar yang sesuai
      options: ['NumPy', 'Laravel', 'React', 'Bootstrap'],
      correctAnswer: 'NumPy', // Kunci jawaban
    ),
  ];
}
