import 'package:flutter/material.dart';

import 'package:practice/page/components/logoButton.dart';
import 'package:practice/page/pages.dart';
import 'package:practice/page/registrationPage/signInPage/signInPage.dart';
import 'package:practice/page/signUpFileComponents/signUpOccupationPicker.dart';

import '../../components/textBuilders.dart';
import '../../components/textElevatedButton.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    bool checkedvalue = false;
    Size size = MediaQuery.of(context).size;
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Colors.pink, Colors.green],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Row(
        children: <Widget>[
          //left image container
          Expanded(
              flex: 4,
              child: Container(
                height: size.height,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1026-08-ktdpo2hf.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=762649fdf7d66f68f0d5fc1c694ce3ac'),
                ),
              )),
          //right container for details
          Expanded(
              flex: 6,
              child: Container(
                  height: size.height,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      //asking if the useris signed up
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              textBuilder(
                                  size: size,
                                  text: 'Are you a member ? ',
                                  color: Colors.black,
                                  textSize: 0.015),
                              SizedBox(
                                width: size.width * 0.00075,
                              ),
                              buildTextElevatedButton(
                                  size: size,
                                  buttonText: 'Sign In',
                                  textSize: 0.0175,
                                  directoryURL: signInPage(),
                                  buttonWidth: 100,
                                  buttonHeight: 30),
                              SizedBox(
                                width: size.width * 0.00075,
                              ),
                              buildTextElevatedButton(
                                size: size,
                                buttonText: 'Back',
                                textSize: 0.0175,
                                buttonWidth: 100,
                                buttonHeight: 30,
                                directoryURL: firstmenupage(),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      Center(
                        child: Container(
                          height: size.height * 0.9,
                          width: size.width * 0.375,
                          //color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: <Widget>[
                                //container for the text named "create your lime light account"
                                Container(
                                  //color: Colors.yellow,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textBuilder(
                                          size: size,
                                          text: 'Create Your',
                                          color: Colors.black,
                                          textSize: 0.045),

                                      Row(
                                        children: <Widget>[
                                          Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(15)),
                                              child: Text(
                                                'LIMELIGHT',
                                                style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.045,
                                                    fontWeight: FontWeight.bold,
                                                    foreground: Paint()
                                                      ..shader =
                                                          linearGradient),
                                              )),
                                          textBuilder(
                                              size: size,
                                              text: 'Account',
                                              color: Colors.black,
                                              textSize: 0.045)
                                        ],
                                      ), //button
                                    ],
                                  ),
                                ), //text
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                //container for the signup textfield sections
                                Container(
                                  //color: Colors.amber,
                                  child: Row(
                                    children: <Widget>[
                                      logoButton(
                                        size: size,
                                        logoURL:
                                            'assets/images/twitterLogo.png',
                                      ),
                                      SizedBox(
                                        width: size.width * 0.01,
                                      ),
                                      logoButton(
                                        size: size,
                                        logoURL:
                                            'assets/images/twitterLogo.png',
                                      ),
                                    ],
                                  ),
                                ), //buttons
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                //divider to seperate both sections
                                Divider(
                                  height: 5,
                                  thickness: 3,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                Container(
                                  //color: Colors.amber,
                                  height: size.height * 0.5,
                                  width: size.width * 0.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            textfieldAnswer(
                                              hideText: false,
                                              widthSize: 0.15,
                                              questionText: 'First Name',
                                              size: size,
                                            ),
                                            textfieldAnswer(
                                              hideText: false,
                                              widthSize: 0.15,
                                              questionText: 'Last Name',
                                              size: size,
                                            ),
                                          ],
                                        ),
                                        textfieldAnswer(
                                          hideText: false,
                                          widthSize: 0.325,
                                          questionText: 'Email',
                                          size: size,
                                        ),
                                        textfieldAnswer(
                                          hideText: true,
                                          widthSize: 0.325,
                                          questionText: 'password',
                                          size: size,
                                        ),
                                        Row(
                                          children: [
                                            //checkBox(),

                                            Text('terms and conditions')
                                          ],
                                        ),
                                        optionButton(buttonName: "Sign Up")
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}

/*class _checkBoxState extends State<checkBoxState> {
  bool checkedvalue = false;
  checkBox({
    Key? key,
    required this.checkedvalue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(value: checkedvalue, onChanged: (bool? value) {
      value=true;
    });
  }
}*/

class textfieldAnswer extends StatelessWidget {
  double widthSize;
  bool hideText;
  String questionText;
  textfieldAnswer({
    Key? key,
    required this.widthSize,
    required this.hideText,
    required this.questionText,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * widthSize,
      height: size.height * 0.1,
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            questionText,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          TextField(
            autocorrect: true,
            obscureText: hideText,
            decoration: InputDecoration(
              counterText: '',
              filled: true,
              fillColor: Color.fromRGBO(202, 255, 231, 1),
              //fillColor: Colors.lightGreen,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.transparent)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.transparent)),
            ),
            maxLength: 30,
          ),
        ],
      ),
    );
  }
}
