import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practice/page/components/roundedButton.dart';

import '../../../constant.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          child: Container(
              height: size.height,
              width: size.width,
              color: Colors.blue,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        right: 50,
                        bottom: 175,
                        child: Container(
                          height: size.height * 0.6,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  textBuilder(
                                    size: size,
                                    text: "SIGN UP",
                                    textSize: 0.03,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.025,
                                  ),
                                  textBuilder(
                                      size: size,
                                      text: "with a social account",
                                      color: Colors.blue,
                                      textSize: 0.025),
                                  Container(
                                    height: size.height * 0.4,
                                    width: size.width * 0.2,
                                    decoration: BoxDecoration(
                                        //color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: GridView.count(
                                      physics: NeverScrollableScrollPhysics(),
                                      crossAxisCount: 2,
                                      children: <Widget>[
                                        //1st button
                                        roundedElevatedButton(size: size),
                                        //2nd button
                                        roundedElevatedButton(size: size),
                                        //3rd button
                                        roundedElevatedButton(size: size),
                                        //4th button
                                        roundedElevatedButton(size: size),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.025,
                                  ),
                                  roundedButton(
                                      text: "USE EMAIL", onPressed: () {})
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              )),
        ));
  }
}

class roundedElevatedButton extends StatelessWidget {
  const roundedElevatedButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      //height: size.height * 0.005,
      //width: size.width * 0.005,
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black, //splash color
              minimumSize: Size(size.width * 0.1, size.height * 0.1),
              splashFactory: InkRipple.splashFactory,
              shape: CircleBorder(),
              elevation: 20),
          child: Text(
            "1",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class textBuilder extends StatelessWidget {
  final String text;
  final double textSize;
  final Color color;
  const textBuilder(
      {Key? key,
      required this.size,
      required this.text,
      required this.color,
      required this.textSize})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color,
          fontSize: size.height * textSize),
    );
  }
}
