import 'package:flutter/material.dart';

class courseButtons extends StatelessWidget {
  String imgURL;
  String textPlaceholder;
  courseButtons({
    Key? key,
    required this.imgURL,
    required this.textPlaceholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(20),
      //color: Colors.white,
      height: size.height * 0.05,
      width: size.width * 0.05,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            //primary: Colors.white.withOpacity(0.5),
            primary: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Stack(alignment: Alignment.center, children: [
          Image.asset(
            imgURL,
            fit: BoxFit.cover,
          ),
          Text(
            textPlaceholder,
            style: TextStyle(
                color: Colors.lime, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
