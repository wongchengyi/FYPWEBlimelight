import 'package:flutter/material.dart';

class InkWellAnswer extends StatefulWidget {
  final ansValue;
  final Color ansColor;
  Function() answerTap;
  InkWellAnswer({
    Key? key,
    required this.ansColor,
    required this.answerTap,
    this.ansValue,
  }) : super(key: key);

  @override
  _InkWellAnswerState createState() => _InkWellAnswerState();
}

class _InkWellAnswerState extends State<InkWellAnswer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.answerTap,
      child: Container(
        height: size.height * 0.05,
        width: size.width * 0.3,
        decoration: BoxDecoration(
            color: widget.ansColor,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            '${widget.ansValue}',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: size.height * 0.02),
          ),
        ),
      ),
    );
  }
}
