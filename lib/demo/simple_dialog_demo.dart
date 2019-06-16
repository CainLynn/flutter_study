import 'package:flutter/material.dart';

enum option {

  A, B, C
}

class SimpleDialogDemo extends StatefulWidget {
  SimpleDialogDemo({Key key}) : super(key: key);

  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  
  String choice = "Nothing";

  Future _openSimpleDialog() async {
    final optionValue = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("SimpleDialog"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("Option A"),
              onPressed: () {
                Navigator.pop(context, option.A);
              },
            ),
            SimpleDialogOption(
              child: Text("Option B"),
              onPressed: () {
                Navigator.pop(context, option.B);
              },
            ),
            SimpleDialogOption(
              child: Text("Option C"),
              onPressed: () {
                Navigator.pop(context, option.C);
              },
            ),
          ],
        );
      }
    );
    
    switch (optionValue) {
      case option.A: 
        setState(() {
          choice = 'A';
        });
        break;
      case option.B: 
        setState(() {
          choice = 'B';
        });
        break;
      case option.C: 
        setState(() {
          choice = option.C.toString();
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleDialogDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your choice is: $choice"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}