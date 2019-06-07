import 'package:flutter/material.dart';

class FromDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo()
            ],
          ),
        ),
      )
    );
  }
}

class TextFieldDemo extends StatefulWidget{
  TextFieldDemoState createState() => TextFieldDemoState();
}
  
class TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.text_fields),
        labelText: "Title",
        hintText: "Enter the post title.",
        // border: InputBorder.none,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.red[100]
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Theme.of(context).accentColor
    );
  }
}