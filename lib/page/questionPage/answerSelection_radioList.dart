import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class radio_listAnswer extends StatefulWidget {
  const radio_listAnswer({Key? key}) : super(key: key);

  @override
  _radio_listAnswerState createState() => _radio_listAnswerState();
}

class _radio_listAnswerState extends State<radio_listAnswer> {
  bool _isRadioSelected = false;
  bool initialSelectionValue = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          //first linked label radio
          LinkedLabelRadio(
            label: 'First tappable label text',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: initialSelectionValue,
            groupValue: _isRadioSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isRadioSelected = newValue;
              });
            },
          ),
          //second
          LinkedLabelRadio(
            label: 'Second tappable label text',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: initialSelectionValue,
            groupValue: _isRadioSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isRadioSelected = newValue;
              });
            },
          ),
          //third
          LinkedLabelRadio(
            label: 'Third tappable label text',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: initialSelectionValue,
            groupValue: _isRadioSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isRadioSelected = newValue;
              });
            },
          ),
          //fourth
          LinkedLabelRadio(
            label: 'Fourth tappable label text',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: initialSelectionValue,
            groupValue: _isRadioSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isRadioSelected = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}

class LinkedLabelRadio extends StatelessWidget {
  const LinkedLabelRadio({
    Key? key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Radio<bool>(
              groupValue: groupValue,
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              }),
          RichText(
            text: TextSpan(
              text: label,
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
              /*recognizer: TapGestureRecognizer()
                ..onTap = () {
                  debugPrint('Label has been tapped.');
                },*/
            ),
          ),
        ],
      ),
    );
  }
}
