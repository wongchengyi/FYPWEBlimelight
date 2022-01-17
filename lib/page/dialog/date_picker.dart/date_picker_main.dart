import 'package:flutter/material.dart';

class date_picker extends StatefulWidget {
  const date_picker({Key? key}) : super(key: key);

  @override
  _date_pickerState createState() => _date_pickerState();
}

class _date_pickerState extends State<date_picker> {
  DateTimeRange? dateRange;
  DateTime? date;
  String getDateRangeText() {
    if (dateRange == null) {
      return 'Select Start and End Date';
    } else {
      return '${dateRange!.start} Until ${dateRange!.end}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(202, 255, 231, 1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            fixedSize: Size(400, 28)),
        onPressed: () => pickDateRange(context),
        child: Text(
          getDateRangeText(),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ));
  }

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(Duration(hours: 24 * 3)));
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
    );

    if (newDateRange == null) {
      return;
    } else {
      setState(() => dateRange = newDateRange);
    }
  }
}
