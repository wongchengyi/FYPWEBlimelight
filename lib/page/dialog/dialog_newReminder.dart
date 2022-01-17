import 'package:flutter/material.dart';
import 'package:practice/page/components/components.dart';
import 'package:practice/page/dialog/addNewReminder.dart';

class dialog_newReminder {
  static exit(context) =>
      showDialog(context: context, builder: (context) => newReminder());
}
