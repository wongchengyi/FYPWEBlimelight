import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constant.dart';
import '../components/SideDrawer.dart';
import '../components/courseInfo.dart';
import '../components/imageTextCourseButtons.dart';
import '../firstmenupage.dart';

class mainCourseLand extends StatefulWidget {
  const mainCourseLand({Key? key}) : super(key: key);

  @override
  _mainCourseLandState createState() => _mainCourseLandState();
}

class _mainCourseLandState extends State<mainCourseLand> {
  //crucial component in retrieving user's text in the search bar
  final thisController = TextEditingController();
  String searchResult = "";
  @override
  void dispose() {
    thisController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(
          "Courses".toUpperCase(),
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 20.0,
                color: Color(0xFF222AC9),
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
        elevation: 10,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        //decoration: kGradientColor,
        child: Column(
          children: [
            //searchbar
            //body container for courses
            Container(
              height: size.height * 0.925,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                  padding: EdgeInsets.all(size.height * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recommended for You".toUpperCase(),
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 20.0,
                                      color: Colors.green[600],
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                Focus.of(context).requestFocus(FocusNode()),
                            child: Container(
                              height: size.height * 0.07,
                              width: size.width * 0.3,
                              child: TextField(
                                controller: thisController,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    fillColor: Color.fromRGBO(202, 255, 231, 1),
                                    filled: true,
                                    counterText: '',
                                    labelText: "Press Enter to Search",
                                    labelStyle: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          //https://flutter.dev/docs/cookbook/forms/retrieve-input
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                // Retrieve the text the user has entered by using the
                                                // TextEditingController.
                                                content:
                                                    Text(thisController.text),
                                              );
                                            },
                                          );
                                        },
                                        icon: Icon(Icons.search)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none)),
                                //this method could used to get users input into the search box
                                onSubmitted: (String search) {
                                  setState(() {
                                    searchResult = search;
                                  });
                                },
                                maxLength: 20,
                                /*inputFormatters: [
                      WhitelistingTextInputFormatter(RegExp("[a-zA-Z]"))
                    ],*/
                                showCursor: true,
                                //bool to autocorrect content
                                autocorrect: true,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.0075,
                      ),
                      Container(
                          height: size.height * 0.2,
                          width: size.width * 0.9,
                          //color: Colors.blue,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildCard(size: size),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              buildCard(size: size),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              buildCard(size: size),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              buildCard(size: size),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              buildCard(size: size),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              buildCard(size: size),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              buildCard(size: size),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              buildCard(size: size),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                            ],
                          )),
                      SizedBox(
                        height: size.height * 0.0075,
                      ),
                      Text(
                        "Popular Courses".toUpperCase(),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 20.0,
                              color: Colors.green[600],
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        child: ListView(
                          children: [
                            providedCourse(size: size),
                            providedCourse(size: size),
                            providedCourse(size: size),
                            providedCourse(size: size),
                            providedCourse(size: size),
                            providedCourse(size: size),
                            providedCourse(size: size),
                            providedCourse(size: size),
                          ],
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class providedCourse extends StatelessWidget {
  const providedCourse({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.17,
      child: ListView(
        children: <Widget>[
          Container(
            child: Row(
              children: [
                SizedBox(
                  height: size.height * 0.15,
                  width: size.height * 0.15,
                  child: Image.asset('assets/images/math.jpg'),
                ),
                SizedBox(width: size.width * 0.015),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Algebra | Course Name',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'xxx Lab | Organization Name',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'In this course | description',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class buildCard extends StatelessWidget {
  const buildCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.height * 0.2,
      height: size.height * 0.2,
      color: Colors.red,
    );
  }
}
