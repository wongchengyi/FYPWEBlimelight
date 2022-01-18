import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practice/page/questionPage/answerSelection_InkWell.dart';
import 'package:practice/page/questionPage/answerSelection_radioList.dart';

import '../../constant.dart';
import '../components/SideDrawer.dart';
import '../firstmenupage.dart';

class mainQuestionPage extends StatefulWidget {
  const mainQuestionPage({Key? key}) : super(key: key);

  @override
  _mainQuestionPageState createState() => _mainQuestionPageState();
}

class _mainQuestionPageState extends State<mainQuestionPage> {
  int questionIndex = 0;
  int userTotalScore = 0;
  int totalScore = 0;
  bool ansWasSelected = false;
  bool endOfQuiz = false;
  String buttonTextNavigator = 'Next Question';
  List<Icon> _scoreTrackerIcon = [
    /*Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    Icon(
      Icons.clear,
      color: Colors.red,
    ),*/
  ];
  void _questionsAnswered(bool ansScore) {
    setState(() {
      //when ans is selected the bool should be flipped to true
      ansWasSelected = true;
      //check score of the ans
      if (ansScore) {
        userTotalScore++;
      }
      //score tracker
      _scoreTrackerIcon.add(ansScore
          ? Icon(
              Icons.check_circle,
              color: Colors.green,
            )
          : Icon(
              Icons.clear,
              color: Colors.red,
            ));
      //check quiz has ended, since the indext is an array starting from 0
      //we are checking if the index had iterated to its final length/last ques
      if (questionIndex + 1 == _questions.length) {
        endOfQuiz = true;
      }
    });
  }

//next question function
  void _nextQuestion() {
    setState(() {
      questionIndex++;
      ansWasSelected = false;
    });
    //end of quiz
    if (questionIndex == _questions.length) {
      _resetQuiz();
      buttonTextNavigator = 'Restart Quiz';
    }
  }

//reset quiz
  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
      userTotalScore = 0;
      _scoreTrackerIcon = [];
      endOfQuiz = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var fontThemeTitle = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 20.0,
          color: Color(0xFF222AC9),
          fontWeight: FontWeight.bold,
        );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(
          "Question".toUpperCase(),
          style: fontThemeTitle,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => firstmenupage()),
              );
            },
            icon: const Icon(Icons.backspace),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      body: Container(
        decoration: kGradientColor,
        child: Center(
          child: Container(
            height: size.height * 0.8,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadiusDirectional.circular(20)),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 9,
                              child: Row(
                                children: [
                                  Text(
                                    'Intro to Computing',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * 0.03),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                  ),
                                  Text(
                                    'Basics of ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * 0.03),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    color: Colors.white,
                                    icon: Icon(Icons.close)))
                          ],
                        ),
                      ),
                    )),
                Expanded(
                  flex: 9,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: size.width * 0.85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 7,
                              child: Container(
                                //color: Colors.amber,
                                child: Column(
                                  children: <Widget>[
                                    //question container
                                    Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment(-0.9, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  questionText(
                                                      size,
                                                      //question index integer variable is being implemented
                                                      'Question ${questionIndex}',
                                                      Colors.lime,
                                                      0.03),
                                                  SizedBox(
                                                    width: size.width * 0.4,
                                                  ),
                                                  questionText(
                                                      size,
                                                      //question index integer variable is being implemented
                                                      'Score:  ${userTotalScore}/${_questions.length}',
                                                      Colors.black,
                                                      0.03),
                                                ],
                                              ),
                                              //question index to indicate the question numbering
                                              questionText(
                                                  size,
                                                  _questions[questionIndex]
                                                          ['Question name']
                                                      .toString(),
                                                  Colors.black,
                                                  0.03)
                                              /*questionText(
                                                  size,
                                                  _questions[questionIndex]
                                                      ['Question name'],
                                                  Colors.black,
                                                  0.03),*/
                                            ],
                                          ),
                                        )),

                                    //radio button answer section container
                                    Expanded(
                                        flex: 4,
                                        child: Align(
                                          alignment: Alignment(-0.8, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              //this line of code represent a map function being used on the list of "questions" as below
                                              //we are extracting the "specific index" of the "answer text" from the list and map it to "ans text" so that it can be passed into the InkWellAnswer stateful widget
                                              //the itteration of it will be exactly 4 times as there are only 4 things to map, this way it is much more convenient and less redundant compared to having to recall the whole thing multiple times
                                              ...(_questions[questionIndex][
                                                          'answersSelectionContent']
                                                      as List<
                                                          Map<String, dynamic>>)
                                                  .map((ansText) =>
                                                      InkWellAnswer(
                                                        ansValue: ansText[
                                                            'answerText'],
                                                        //the ans color is being used to determine if the selected answer is wrong or correct
                                                        ansColor: ansWasSelected
                                                            ? ansText['score']
                                                                ? Colors.green
                                                                : Colors.red
                                                            : Colors
                                                                .transparent,
                                                        answerTap: () {
                                                          if (ansWasSelected) {
                                                            return;
                                                          }
                                                          _questionsAnswered(
                                                              ansText['score']);
                                                        },
                                                      ))
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                            //color: Colors.pink,
                                            ))
                                  ],
                                ),
                              )),
                          VerticalDivider(
                            width: size.height * 0.005,
                            color: Colors.grey,
                          ),
                          Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.all(size.height * 0.015),
                                //color: Colors.yellow,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        if (_scoreTrackerIcon.length == 0)
                                          SizedBox(
                                            height: size.height * 0.01,
                                          ),
                                        if (_scoreTrackerIcon.length > 0)
                                          ..._scoreTrackerIcon
                                      ],
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          _nextQuestion();
                                        },
                                        child: Text(buttonTextNavigator))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text questionText(
      Size size, String questionText, Color textColor, var H_fontSize) {
    //H_fontSize stands for height based font size the percentage of the height
    return Text(
      questionText,
      style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: size.height * H_fontSize),
    );
  }
}

//this part can be modified by reading relevant information from the firebase
final _questions = const [
  //index/question 0
  //to determine if the answer is the right or not simply change the "score" boolean value
  {
    'Question name': 'Question Text 1',
    'answersSelectionContent': [
      {'answerText': 'First Answer Text', 'score': true},
      {'answerText': 'Second Answer Text', 'score': false},
      {'answerText': 'Third Answer Text', 'score': false},
      {'answerText': 'Fourth Answer Text', 'score': false},
    ]
  },
  //index/question 1
  {
    'Question name': 'Question Text 2',
    'answersSelectionContent': [
      {'answerText': 'First Answer Text', 'score': true},
      {'answerText': 'Second Answer Text', 'score': false},
      {'answerText': 'Third Answer Text', 'score': false},
      {'answerText': 'Fourth Answer Text', 'score': false},
    ]
  },
  //index/question 2
  {
    'Question name': 'Question Text 3',
    'answersSelectionContent': [
      {'answerText': 'First Answer Text', 'score': true},
      {'answerText': 'Second Answer Text', 'score': false},
      {'answerText': 'Third Answer Text', 'score': false},
      {'answerText': 'Fourth Answer Text', 'score': false},
    ]
  },
];
