import 'package:flutter/material.dart';
import 'button_demo.dart';
import 'floating_action_button_demo.dart';
import 'popup_menu_button_demo.dart';
import 'from_demo.dart';
import 'check_demo.dart';
import 'radio_Demo.dart';
import 'switch_Demo.dart';

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Components"),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: "Switch",
            page: SwitchDemo(),
          ),
          ListItem(
            title: "Radio",
            page: RadioDemo(),
          ),
          ListItem(
            title: "Checkbox",
            page: CheckboxDemo(),
          ),
          ListItem(
            title: "Form",
            page: FromDemo(),
          ),
          ListItem(
            title: "PopMenuButton",
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: "FloatingActionButton",
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: "Button",
            page: ButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class WidgetDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgetDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (context) => page
      )),
    );
  }
}