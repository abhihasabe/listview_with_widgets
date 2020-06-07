import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:quicsolv_assignment/interactor/DataInteractor.dart';

class DatePicker extends StatefulWidget {
  DatePicker({
    this.keyValue,
    this.lable,
    this.firstDate,
    this.initaldate,
    this.latDate,
    this.textColor,
    this.dynamicInteractor,
    this.textSize,
  }) : super(key: Key(keyValue));

  final DataInteractor dynamicInteractor;
  final String lable, keyValue;
  final DateTime firstDate, latDate, initaldate;
  final Color textColor;
  final double textSize;

  static String abc = 'hjbdx';
  var dateformate = DateFormat('MMMM d, yyyy');

  @override
  _DateTimeDynamicFieldState createState() => _DateTimeDynamicFieldState();
}

class _DateTimeDynamicFieldState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return DateTimeField(
      format: widget.dateformate,
      decoration: InputDecoration(
        hintText: widget.lable,
          suffixIcon: Icon(Icons.calendar_today),
          labelText: widget.lable),
      onShowPicker: (context, currentValue) {
        return showDatePicker(
          context: context,
          firstDate: widget.firstDate ?? DateTime(1900),
          initialDate: widget.initaldate ?? DateTime.now(),
          lastDate: widget.latDate ?? DateTime(DateTime.now().year),
        );
      },
      onChanged: (date) {
        widget.dynamicInteractor.response(widget.keyValue,widget.lable, date.toString());
        setState(
          () {
            print(date.day);
          },
        );
      },
    );
  }
}
