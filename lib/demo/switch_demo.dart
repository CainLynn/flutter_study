import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key key}) : super(key: key);

  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool switcgItemValue = true;
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
            Text(switcgItemValue ? "😊" : "😢", style: TextStyle(fontSize: 36),),
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Switch(
                  value: switcgItemValue,
                  onChanged: (value) {
                    setState(() {
                      switcgItemValue = value;
                    });
                  },
                  activeColor: Colors.black,
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}