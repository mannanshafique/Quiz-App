import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TrueFalse extends StatefulWidget {
  @override
  _TrueFalseState createState() => _TrueFalseState();
}

class _TrueFalseState extends State<TrueFalse> {

  //We also use question and answer different lists but its awkward to find the correct index so
  //we use model class ....we use one by one and also in list   LIKE
 // Question q1 = Question('give the text', 'Give The Answer'); but is typicall

//  List<String> questions = [
//    'You can lead a cow down stairs but not up stairs.',
//    'Approximately one quarter of human bones are in the feet.',
//    'A slug\'s blood is green.',
//    'Hello'
//
//  ];
//
//  List<String> answ = [
//    'True',
//    'False',
//    'False',
//    'True'
//  ];

  List<Icon> answerIcon = [];

  QuizBrain quizBrain = QuizBrain();

void checkAnswer(String userPickedAnswer) {
  String correctAnswer = quizBrain.getQuestionAnswer();

  setState(() {
    if (quizBrain.isFinished() == true) {

      Alert(

        context: context,
        title: 'Finished!',
        desc: 'You\'ve reached the end of the quiz.',
      ).show();
      quizBrain.reset();
      answerIcon = [];
    }

    else {
      if (userPickedAnswer == correctAnswer) {
        answerIcon.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        answerIcon.add(Icon(
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: body(),
      ),
    );
  }


  Column body() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Center(
                  child: Wrap(
                    children: <Widget>[
                      Text(
                      quizBrain.getQuestionText(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  )
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: flt(Colors.red, "True"),
              )),

          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: flt(Colors.green, "False"),
              )),

          Row(
            children: answerIcon,
          )
        ]
    );
  }


  MaterialButton flt(Color color, String text) {
    return MaterialButton(
        onPressed: () {
          checkAnswer(text);
        },
        color: color,
        child: Text("$text", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),)
    );
  }
}