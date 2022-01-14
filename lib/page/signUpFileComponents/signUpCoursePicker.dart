import 'package:flutter/material.dart';

import 'package:practice/page/components/components.dart';

import '../firstmenupage.dart';

class signUpCourseImagePicker extends StatefulWidget {
  const signUpCourseImagePicker({Key? key}) : super(key: key);

  @override
  _signUpCourseImagePickerState createState() =>
      _signUpCourseImagePickerState();
}

class _signUpCourseImagePickerState extends State<signUpCourseImagePicker> {
  @override
  Widget build(BuildContext context) {
    var fontTheme = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        );
    final gradient = LinearGradient(
      colors: [Colors.pink, Colors.green],
    );
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: Center(
        child: Container(
            color: Colors.black,
            height: size.height,
            width: size.width,
            child: Column(
              children: <Widget>[
                Container(
                    height: size.height * 0.15,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return gradient
                                  .createShader(Offset.zero & bounds.size);
                            },
                            child: Text(
                              'title placeholder',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return gradient
                                  .createShader(Offset.zero & bounds.size);
                            },
                            child: Text(
                              'heading text placeholder',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )),
                Container(
                    height: size.height * 0.75,
                    width: size.width * 0.9,
                    //color: Colors.white,
                    child: Container(
                        child: GridView.count(
                      crossAxisCount: 4,
                      children: <Widget>[
                        //Image.asset('assets/images/badges.png'),
                        //button
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                        courseButtons(
                          imgURL: 'assets/images/math.jpg',
                          textPlaceholder: 'text placeholder 1',
                        ),
                      ],
                    ))),
              ],
            )),
      ),
    );
  }
}

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
