//this page is solely used for testing the connections between
//clickable buttons and etc. does not serve any purposes

import 'package:flutter/material.dart';
import 'package:practice/constant.dart';
import 'package:practice/main.dart';
import 'package:practice/page/components/courseboxes.dart';
import 'package:practice/page/components/navigationbar.dart';
import 'package:practice/page/components/scrollbar.dart';
import 'package:practice/page/firstmenupage.dart';

import 'components/SideDrawer.dart';

class testingpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: SideDrawer(),
        ),
        appBar: AppBar(
          title: Text(
            "Limelight".toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
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
          elevation: 100,
        ),
        body: Scaffold());
  }
}
