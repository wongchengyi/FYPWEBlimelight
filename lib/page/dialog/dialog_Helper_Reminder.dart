import 'package:flutter/material.dart';
import 'package:practice/page/dialog/reminderDialog.dart';

// ignore: camel_case_types
class dialogHelper_Reminder {
  static exit(context) =>
      showDialog(context: context, builder: (context) => reminderDialog());
}
