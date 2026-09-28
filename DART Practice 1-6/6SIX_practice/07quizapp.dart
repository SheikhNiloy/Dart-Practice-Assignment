import 'dart:io';

class Question {
  String question;
  List<String> options;
  int answer;

  Question(this.question, this.options, this.answer);
}

class Quiz {
  List<Question> questions = [
    Question(
      "Which language is used by Flutter?",
      ["Java", "Dart", "Python", "C++"],
      2,
    ),
    Question(
      "Which keyword creates a class in Dart?",
      ["class", "object", "new", "create"],
      1,
    ),
    Question(
      "Which symbol is used for inheritance in Dart?",
      ["extends", "implements", "inherits", "super"],
      1,
    )
  ];

  int score = 0;

  void start() {
    for (Question q in questions) {
      print("\n${q.question}");

      for (int i = 0; i < q.options.length; i++) {
        print("${i + 1}. ${q.options[i]}");
      }

      print("Enter your answer:");
      int answer = int.parse(stdin.readLineSync()!);

      if (answer == q.answer) {
        score++;
      }
    }

    print("\nYour score is $score/${questions.length}");
  }
}

void main() {
  Quiz quiz = Quiz();
  quiz.start();
}
