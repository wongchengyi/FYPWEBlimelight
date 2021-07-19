import 'dart:ui';

import 'package:flutter/material.dart';

class badgeDialog extends StatelessWidget {
  const badgeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height * 0.9;
    double w = size.width * 0.9;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context, h, w),
    );
  }

  _buildChild(BuildContext context, double this_height, double this_width) =>
      Container(
        height: this_height,
        width: this_width,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(children: <Widget>[
            //Container A for the title header and two buttons
            Container(
              width: this_width,
              height: this_height * 0.12,
              child: Padding(
                padding: EdgeInsets.all(20),
                //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 7,
                      child: createText(
                          context, "Title holder 1", 0xFF000000, 0.03),
                    ),
                    //save button
                    createButton(context, "save", 0xFFE9F8ED, 0.03, false),
                    SizedBox(
                      width: this_width * 0.015,
                    ),
                    //cancel button
                    createButton(context, "cancel", 0xFFE487B8, 0.03, false),
                  ],
                ),
              ),
            ),
            //Container B for the displayed badges
            Container(
                width: this_width,
                height: this_height * 0.43,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: FractionalOffset(0.1, 0),
                        child: createText(
                            context, "Title holder 2", 0xFF000000, 0.03),
                      ),
                      SizedBox(
                        height: this_height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildBadgesButton(
                              context, 'assets/images/badges.png'),
                          buildBadgesButton(
                              context, 'assets/images/badges.png'),
                          buildBadgesButton(
                              context, 'assets/images/badges.png'),
                          buildBadgesButton(
                              context, 'assets/images/badges.png'),
                          buildBadgesButton(
                              context, 'assets/images/badges.png'),
                          buildBadgesButton(
                              context, 'assets/images/badges.png'),
                        ],
                      )
                    ],
                  ),
                )),
            //Container C for showing the remaining badges
            Container(
              width: this_width,
              height: this_height * 0.45,
              color: Colors.yellow,
            ),
          ]),
        ),
      );
  //widget for creating non bold text
  Widget createText(
      BuildContext context, String text, int colorCode, num textSize) {
    Size size = MediaQuery.of(context).size;
    return Text(
      text,
      textAlign: TextAlign.start,
      style:
          TextStyle(fontSize: size.height * textSize, color: Color(colorCode)),
    );
  }

//Widget for button on userinformation widget
  Widget createButton(BuildContext context, String text, int colorCode,
      num textSize, bool focus) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      autofocus: focus,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(text.toUpperCase(),
            style: const TextStyle(
              //fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      onPressed: () {}, //=> changeText,
      color: Color(colorCode),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }

  Widget buildBadgesButton(BuildContext context, String picURL) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
        onPressed: () {},
        child: Container(
            width: size.width * 0.1,
            height: size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Image(image: AssetImage(picURL)), Text("")],
            )));
  }
}
/*

              //container C to show all of the remaining+possible badges to be selected
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    createNonBoldText(context, "Text title", 0xFF000000, 0.03),
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 6,
                    )
                  ],
                ),
              ),
            ],
            
            Container(
        child: ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: FlatButton(
        onPressed: () {},
        child: Image(image: AssetImage(picURL)),
      ),
    ));
            */
