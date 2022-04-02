class Question {
  String questionText = "";
  late bool questionAnswer;

  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}

class QuizBrain {
  int questionNumber = 0;
  List<Question> questionList = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  void nextQuestion() {
    if (questionNumber < questionList.length) {
      questionNumber++;
    }
  }

  String getQuestionText() {
    return questionList[questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return questionList[questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (questionNumber >= questionList.length) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}
