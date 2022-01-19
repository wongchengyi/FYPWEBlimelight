import 'package:flutter/material.dart';
import 'package:practice/page/components/textElevatedButton.dart';
import 'dart:io' show Platform;

import 'package:practice/page/pages.dart';
import 'package:practice/page/registrationPage/signInPage/secondarySignInPage.dart';
import 'package:practice/page/registrationPage/signInPage/signInPage.dart';
import 'package:practice/page/registrationPage/signUpPage/signUpPage.dart';

import 'components/textBuilders.dart';

//can use stack for the welcomepage
class firstmenupage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //getting the size of the browser the device is running
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(children: <Widget>[
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dashBoardPage()),
                );
              },
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: screenSize.height * 0.2,
                  width: screenSize.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          children: [
                            FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                "welcome to".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                "limelight".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 50,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
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

class Navbaritems extends StatelessWidget {
  final String title;
  final Function press;
  const Navbaritems({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
