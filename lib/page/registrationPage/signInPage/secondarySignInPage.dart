import 'package:flutter/material.dart';
import 'package:practice/page/registrationPage/signInPage/signInPage.dart';

import '../../components/logoButton.dart';
import '../../components/textBuilders.dart';
import '../../components/textElevatedButton.dart';
import '../../firstmenupage.dart';
import '../../signUpFileComponents/signUpOccupationPicker.dart';
import '../signUpPage/signUpPage.dart';

class secondarySignInPage extends StatefulWidget {
  const secondarySignInPage({Key? key}) : super(key: key);

  @override
  _secondarySignInPageState createState() => _secondarySignInPageState();
}

class _secondarySignInPageState extends State<secondarySignInPage> {
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
                                  text: 'Not a member ? ',
                                  color: Colors.black,
                                  textSize: 0.015),
                              SizedBox(
                                width: size.width * 0.00075,
                              ),
                              buildTextElevatedButton(
                                  size: size,
                                  buttonText: 'Sign Up',
                                  textSize: 0.0175,
                                  directoryURL: signUpPage(),
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
                                          text: 'Sign In to your',
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      logoButton(
                                        size: size,
                                        logoURL:
                                            'assets/images/twitterLogo.png',
                                      ),
                                      Text(
                                        'OR',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
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
                                        SizedBox(
                                          height: size.height * 0.1,
                                        ),
                                        optionButton(buttonName: "Sign In")
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
