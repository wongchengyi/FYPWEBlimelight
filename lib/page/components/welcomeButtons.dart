import 'package:flutter/material.dart';

import '../dashBoardPage.dart';

class welcomeButton extends StatelessWidget {
  const welcomeButton({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 1,
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
