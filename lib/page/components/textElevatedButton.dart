import 'package:flutter/material.dart';

import '../firstmenupage.dart';
import 'components.dart';

class buildTextElevatedButton extends StatelessWidget {
  String buttonText;
  Widget directoryURL;
  double textSize;
  double buttonWidth;
  double buttonHeight;
  buildTextElevatedButton({
    Key? key,
    required this.buttonText,
    required this.directoryURL,
    required this.textSize,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(202, 255, 231, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          fixedSize: Size(buttonWidth, buttonHeight)), //width, height
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => directoryURL, //can customize directed page
        ));
      },
      child: textBuilder(
          size: size,
          text: buttonText,
          color: Colors.black,
          textSize: textSize),
    );
  }
}
