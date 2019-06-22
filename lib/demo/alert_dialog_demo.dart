import 'package:flutter/material.dart';

enum Action{
  OK,
  Cancel
}

class AlertDialogDemo extends StatefulWidget {
  AlertDialogDemo({Key key}) : super(key: key);

  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {

  String choice = "Nothing";
  
  Future _openAlterDialog()  async{

    final action = await showDialog(
        context: context,
        // Cain 点击空白处禁止关闭弹窗
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("AlertDialog"),
            content: Text("Are you sure about this?"),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                },
              ),
              FlatButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.pop(context, Action.OK);
                },
              )
            ],
          );
        });
  
    setState(() {
      choice = action.toString();
    });
    if(Action.Cancel == action) {
      // _openAlterDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialogDemo"),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                RaisedButton(
              child: Text("Open AlertDialog $choice"),
              onPressed: _openAlterDialog,
            ),
            ],
          )
        ],
      )
    );
  }
}
