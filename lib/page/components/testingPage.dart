import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/page/badge/exportbadge.dart';
import 'package:practice/page/chatPage/secondChatPage.dart';
import 'package:practice/page/components/components.dart';
import 'package:practice/page/questionPage/mainQuestionPage.dart';
import 'package:practice/page/registrationPage/signInPage/signInPage.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';
import 'package:practice/page/signUpFileComponents/signUpCoursePicker.dart';
import 'package:practice/page/signUpFileComponents/signUpOccupationPicker.dart';

import '../CalendarPage2.dart';
import '../firstmenupage.dart';

class testingPage extends StatefulWidget {
  const testingPage({Key? key}) : super(key: key);

  @override
  _testingPageState createState() => _testingPageState();
}

class _testingPageState extends State<testingPage> {
  @override
  Widget build(BuildContext context) {
    var fontTheme = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        );
    var boxDecoration = BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(20),
    );
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(
          "Testing Page",
          style: fontTheme,
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
        child: Container(
          height: size.height,
          width: size.width,
          decoration: kGradientColor,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                buildItem(
                    text: "sign in test page",
                    onClicked: () => SelectedMenu(context, 0)),
                buildItem(
                    text: "Sign Up Page",
                    onClicked: () => SelectedMenu(context, 1)),
                buildItem(
                    text: "Sign up screen course picker",
                    onClicked: () => SelectedMenu(context, 2)),
                buildItem(
                    text: "Sign up occupation screen",
                    onClicked: () => SelectedMenu(context, 3)),
                buildItem(
                    text: "Sign up text field input screen",
                    onClicked: () => SelectedMenu(context, 4)),
                buildItem(
                    text: "Second Chat page",
                    onClicked: () => SelectedMenu(context, 5)),
                buildItem(
                    text: "Question Page",
                    onClicked: () => SelectedMenu(context, 6)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //default flutter icon widget method
  Widget buildItem({
    required String text,
    onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.lime;

    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  SelectedMenu(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => signInPage(), //can customize directed page
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => signUpPage(), //can customize directed page
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              signUpCourseImagePicker(), //can customize directed page
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              occupationPicker(), //can customize directed page
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => signUpPage(), //can customize directed page
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              secondaryChatPage(), //can customize directed page
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              mainQuestionPage(), //can customize directed page
        ));
        break;
    }
  }
}
