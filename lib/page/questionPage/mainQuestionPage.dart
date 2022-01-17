import 'package:flutter/material.dart';

import '../../constant.dart';
import '../components/SideDrawer.dart';
import '../firstmenupage.dart';

class mainQuestionPage extends StatefulWidget {
  const mainQuestionPage({Key? key}) : super(key: key);

  @override
  _mainQuestionPageState createState() => _mainQuestionPageState();
}

class _mainQuestionPageState extends State<mainQuestionPage> {
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
                                color: Colors.amber,
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.blue,
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
}
