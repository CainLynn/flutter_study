import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  SnackBarDemo({Key key}) : super(key: key);

  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SnackBarDemo"),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButton()
              ],
            )
          ],
        ));
  }
}

class SnackBarButton extends StatelessWidget {
  const SnackBarButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text("Open SnackBar"),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Processing..."),
              action: SnackBarAction(
                label: "OK",
                onPressed: () {
                  
                },
              )
            )
          );
        },
      ),
    );
  }
}