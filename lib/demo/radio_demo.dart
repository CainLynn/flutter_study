import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  bool radioGroupValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("RadioValue:$radioGroupValue"),
            SizedBox(height: 32,),
            RadioListTile(
              value: true,
              groupValue: radioGroupValue,
              onChanged: (value) {
                setState(() {
                  radioGroupValue = value;
                });
              },
              title: Text("RadioListTitle1"),
              subtitle: Text("Description"),
              selected: radioGroupValue,
              secondary: Icon(Icons.filter_1),
            ),
            RadioListTile(
              value: false,
              groupValue: radioGroupValue,
              onChanged: null,
              title: Text("RadioListTitle2"),
              subtitle: Text("Description"),
              selected: !radioGroupValue,
              secondary: Icon(Icons.filter_2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: true,
                  groupValue: radioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      radioGroupValue = value;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Radio(
                  value: false,
                  groupValue: radioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      radioGroupValue = value;
                    });
                  },
                  activeColor: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}