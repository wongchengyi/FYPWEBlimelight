import 'package:flutter/material.dart';

import '../components/SideDrawer.dart';
import '../firstmenupage.dart';

class occupationPicker extends StatefulWidget {
  const occupationPicker({Key? key}) : super(key: key);

  @override
  _occupationPickerState createState() => _occupationPickerState();
}

class _occupationPickerState extends State<occupationPicker> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var fontTheme = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign Up Progress",
          style: fontTheme,
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
      drawer: SideDrawer(),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Stack(
          children: <Widget>[
            Text('image 1 placeholder'), //top left
            Align(
              alignment: Alignment.topRight,
              child: Text('image 2 placeholder'),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text('image 2 placeholder'),
            ),
            //Text('image 2 placeholder'),//top right
            //Text('image 3 placeholder'),//bottom right
            Align(
              alignment: Alignment.center,
              child: Container(
                  color: Colors.transparent,
                  height: size.height * 0.45,
                  width: size.width * 0.4,
                  child: Center(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'question text placeholder',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        optionButton(
                          buttonName: 'option 1',
                        ),
                        optionButton(
                          buttonName: 'option 2',
                        ),
                      ],
                    ),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}

class optionButton extends StatelessWidget {
  String buttonName;
  optionButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: Colors.greenAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            fixedSize: Size(120, 40)),
        child: Text(
          'option 1',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ));
  }
}
