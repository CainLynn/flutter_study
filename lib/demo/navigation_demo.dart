import 'package:flutter/material.dart';

class NavigationDemo extends StatelessWidget{

  void _steateGo(BuildContext context, String title) {

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PageDemo(title: title)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(children: <Widget>[
          FlatButton(
            child: Text("Home"),
            onPressed: () => _steateGo(context, "Home")
            ,
          ),
          FlatButton(
            child: Text("About"),
            onPressed: () => Navigator.pushNamed(context, "/about")
            ,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ),
      )
    );
  }
}

class PageDemo extends StatelessWidget{

  final String title;

  PageDemo({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}