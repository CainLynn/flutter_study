import 'package:flutter/material.dart';
import 'package:flutter_study/demo/listview_demo.dart';

enum Action { OK, Cancel }

class BottomSheetDemo extends StatefulWidget {
  BottomSheetDemo({Key key}) : super(key: key);

  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16,
              ),
              Text("01:30 / 03:30"),
              Expanded(
                child: Text(
                  'Fix you - Coldplay',
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  _openModelBottomSheet() async{
    final action = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Option A"),
                  onTap: () {
                    Navigator.pop(context, "A");
                  },
                ),
                ListTile(
                  title: Text("Option A1"),
                  onTap: () {
                    Navigator.pop(context, "A1");
                  },
                ),
                ListTile(
                  title: Text("Option A2"),
                  onTap: () {
                    Navigator.pop(context, "A2");
                  },
                ),
                ListTile(
                  title: Text("Option A3"),
                ),
                ListTile(
                  title: Text("Option A4"),
                ),
                ListTile(
                  title: Text("Option A6"),
                ),
                ListTile(
                  title: Text("Option A5"),
                ),
              ],
            ),
          );
        });
    print(action);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _bottomSheetScaffoldKey,
        appBar: AppBar(
          title: Text("BottomSheetDemo"),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Open BottomSheet"),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text("Open Model BottomSheet"),
                  onPressed: _openModelBottomSheet,
                )
              ],
            )
          ],
        ));
  }
}
