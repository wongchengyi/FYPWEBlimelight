import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/page/dialog/date_picker.dart/date_picker_main.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'package:practice/page/components/components.dart';
import 'package:practice/page/registrationPage/signUpPage/textField.dart';

class newReminder extends StatefulWidget {
  const newReminder({Key? key}) : super(key: key);

  @override
  _newReminderState createState() => _newReminderState();
}

class _newReminderState extends State<newReminder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        //backgroundColor: Colors.amber,
        child: Container(
          height: size.height * 0.5,
          width: size.width * 0.7,
          child: Column(
            children: <Widget>[
              //title column
              Expanded(
                flex: 2,
                child: Container(
                    margin: EdgeInsets.all(size.height * 0.03),
                    width: size.width * 0.7,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Text(
                            'Add New Reminder',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: size.height * 0.04),
                          ),
                        ),
                        //save button
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(202, 255, 231, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                fixedSize: Size(75, 28)),
                            onPressed: () {},
                            child: Text("save".toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ))),
                        SizedBox(
                          width: size.width * 0.015,
                        ),
                        //close button/exit button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              //primary: Color.fromRGBO(202, 255, 231, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fixedSize: Size(80, 28)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel".toUpperCase(),
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    )),
              ),
              //content area
              Expanded(
                flex: 8,
                child: Container(
                    width: size.width * 0.7,
                    //color: Colors.red,
                    child: Row(
                      children: <Widget>[
                        //details
                        Expanded(
                            flex: 7,
                            child: Container(
                              margin: EdgeInsets.all(size.height * 0.015),
                              height: double.maxFinite,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  titleText(
                                    size: size,
                                    title: 'Title: ',
                                  ),
                                  TextField(
                                    maxLength: 60,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Date: ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 13, 216, 97),
                                            fontWeight: FontWeight.bold,
                                            fontSize: size.height * 0.025),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(
                                        width: size.width * 0.01,
                                      ),
                                      date_picker()
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  titleText(
                                    size: size,
                                    title: 'Description',
                                  ),
                                  TextField(
                                    maxLength: 60,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                  ),
                                ],
                              ),
                            )),
                        //calendar
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: double.maxFinite,
                            child: SfCalendar(
                              firstDayOfWeek: 1,
                              showDatePickerButton: true,
                              showNavigationArrow: true,
                              view: CalendarView.month,
                            ),
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}

class titleText extends StatelessWidget {
  String title;
  titleText({
    Key? key,
    required this.title,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Color(0xFF22C1BA),
          fontWeight: FontWeight.bold,
          fontSize: size.height * 0.025),
      textAlign: TextAlign.start,
    );
  }
}
/*
 titleText(
                                    size: size,
                                    title: 'Date & Time',
                                  ),
                                  Text(
                                    'Start: ',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 13, 216, 97),
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * 0.02),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.0025,
                                  ),
                                  Text(
                                    'End: ',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 13, 216, 97),
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * 0.02),
                                    textAlign: TextAlign.start,
                                  ),*/