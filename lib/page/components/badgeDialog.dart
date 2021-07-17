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
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          textBuilder("Edit badge wall", Colors.green),
                          buttonBuilder("save"),
                          buttonBuilder("cancel")
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      );
  Widget textBuilder(String text, Color color) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(color: Colors.green[700], fontWeight: FontWeight.bold),
    );
  }

  Widget buttonBuilder(String text) {
    return FlatButton(
        onPressed: () {},
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color(0xFF222AC9),
          ),
        ));
  }
}
