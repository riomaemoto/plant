import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant/finish_page.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'main.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> answers = [];

  void checkAnswer(bool userAnswer) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => FinishPage()));
    return;
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quizBrain.reset();
        answers = [];
      } else {
        if (userAnswer == correctAnswer) {
          answers.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          answers.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionNumber == 3
                    ? "Finish"
                    : quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        quizBrain.questionNumber == 3
            ? Container()
            : Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      checkAnswer(true);
                      // TODO checkAnswer(userAnswer true);
                    },
                  ),
                ),
              ),
        quizBrain.questionNumber == 3
            ? Container()
            : Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'False',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      checkAnswer(false);
                      // TODO checkAnswer(userAnswer false);
                    },
                  ),
                ),
              ),
        quizBrain.questionNumber == 3
            ? Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text(
                      'Restart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      quizBrain.reset();
                      answers = [];
                      setState(() {});
                    },
                  ),
                ),
              )
            : Container(),
        Row(
          children: answers,
        )
      ],
    );
  }
}
