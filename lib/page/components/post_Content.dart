import 'package:flutter/material.dart';

class post_Content extends StatefulWidget {
  final String authorname, authorID;
  final String postText;
  const post_Content(
      {Key? key,
      required this.authorname,
      required this.postText,
      required this.authorID})
      : super(key: key);

  @override
  _post_ContentState createState() => _post_ContentState();
}

class _post_ContentState extends State<post_Content> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '${widget.authorname}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.height * 0.02),
              ),
              Text(
                '${widget.authorID}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.height * 0.02),
              ),
            ],
          ),
          Text(
            '${widget.postText}',
            style: TextStyle(fontSize: size.height * 0.02),
          ),
        ],
      ),
    );
  }
}
