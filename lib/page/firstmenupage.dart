import 'package:flutter/material.dart';
import 'package:practice/page/components/textElevatedButton.dart';
import 'dart:io' show Platform;
import 'package:practice/page/pages.dart';
import 'package:practice/page/registrationPage/signInPage/secondarySignInPage.dart';
import 'package:practice/page/registrationPage/signInPage/signInPage.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';

import 'components/textBuilders.dart';
import 'components/welcomeButtons.dart';

//can use stack for the welcomepage
class firstmenupage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //getting the size of the browser the device is running
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: welcomeButton(screenSize: screenSize),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    height: screenSize.height * 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: screenSize.height,
                          //color: Colors.blue,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Container(
                                  //color: Colors.amber,
                                  height: screenSize.height * 0.4,
                                  width: screenSize.width * 0.5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(
                                          image: AssetImage(
                                              'assets/images/Blocklime_horizontal_official.png'))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                height: screenSize.height * 0.6,
                                color: Colors.black,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'About Us',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                childCount: 1,
              ))
            ],
          ),

          //buttons for sign in and sign up
          Positioned(
            right: 30,
            top: 30,
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(202, 255, 231, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fixedSize: Size(75, 28)), //width, height
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            secondarySignInPage() //can customize directed page
                        ));
                  },
                  child: textBuilder(
                      size: screenSize,
                      text: 'Sign In',
                      color: Colors.black,
                      textSize: 0.015),
                ),
                SizedBox(width: screenSize.width * 0.01),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(202, 255, 231, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fixedSize: Size(75, 28)), //width, height
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          signUpPage(), //can customize directed page
                    ));
                  },
                  child: textBuilder(
                      size: screenSize,
                      text: 'Sign Up',
                      color: Colors.black,
                      textSize: 0.015),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
