import 'package:flutter/material.dart';
import 'package:practice/page/components/components.dart';

import '../pages.dart';

class welcomeLandingPage extends StatefulWidget {
  const welcomeLandingPage({Key? key}) : super(key: key);

  @override
  _welcomeLandingPageState createState() => _welcomeLandingPageState();
}

class _welcomeLandingPageState extends State<welcomeLandingPage> {
  @override
  Widget build(BuildContext context) {
    var fontThemeTitle = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 20.0,
          color: Color(0xFF222AC9),
          fontWeight: FontWeight.bold,
        );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(
          "Dashboard".toUpperCase(),
          style: fontThemeTitle,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => firstmenupage()),
              );
            },
            icon: const Icon(Icons.backspace),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      body: Container(
        color: Colors.white,
        child: Text('welcome page'),
      ),
    );
  }
}
