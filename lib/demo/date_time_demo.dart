import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  DateTimeDemo({Key key}) : super(key: key);

  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = new DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 9,minute: 10);

  _selectDate() async {

    // Cain Material风格的日期选择器
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100)
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

    Future<void> _selectTime() async {

    // Cain Material风格的日期选择器
    final TimeOfDay date = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (date != null) {
      setState(() {
        selectedTime = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("DateTimeDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMMMMd().format(selectedDate)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                      Text(selectedTime.format(context)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}