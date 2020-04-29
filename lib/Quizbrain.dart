//import 'package:flutter/material.dart';
//
//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.pink,
//        title: Text("Home"),
//        centerTitle: true,
//        actions: <Widget>[
//          Icon(
//            Icons.search,
//            color: Colors.pink,
//          )
//        ],
//      ),
//      bottomNavigationBar: BottomAppBar(
//          color: Colors.pink,
//          child: Padding(
//            padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
//            child: Row(
//              mainAxisSize: MainAxisSize.max,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: <Widget>[
//                Icon(
//                  Icons.directions_car,
//                  size: 50.0,
//                  color: Colors.white,
//                ),
//                Icon(
//                  Icons.camera,
//                  size: 50.0,
//                  color: Colors.white,
//                ),
//              ],
//            ),
//          )),
//      body: SafeArea(
//
//          child: null
//      ),
//    );
//  }
//}
//Above is login homepage
import 'package:flutter/material.dart';
import 'package:ppractice/Question.dart';

class QuizBrain{

  int _questionNumber = 0;
  //List hide ke hay yani encapculation
  //Alag class banai yani Abstration

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', 'true'),
    Question('You can lead a cow down stairs but not up stairs.', 'False'),
    Question('Approximately one quarter of human bones are in the feet.', 'true'),
    Question('A slug\'s blood is green.', 'True'),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', 'True'),
    Question('It is illegal to pee in the Ocean in Portugal.', 'True'),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        'False'),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
       ' True'),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        'False'),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        'True'),
    Question('Google was originally called \"Backrub\".', 'True'),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        'True'),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
       ' True'),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  String getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning True');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}

