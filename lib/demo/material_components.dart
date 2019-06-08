import 'package:flutter/material.dart';

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
            title: "FloatingActionButton",
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: "ButtonDemo",
            page: ButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Cain 扁平化按钮
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text("FlatButton"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          onPressed: () => {},
        ),
        FlatButton.icon(
          label: Text("FlatButton Icon"),
          icon: Icon(Icons.view_headline),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          onPressed: () => {},
        ),
      ],
    );
    // Cain 凸起的按钮
    final Widget raisedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // Cain 斜角矩形
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(10)
              // )
              shape: StadiumBorder(
              )
            )
          ),
          child: RaisedButton(
            child: Text("FlatButton"),
            onPressed: () => {},
            elevation: 0,
          ),
        ),
        // RaisedButton(
        //   child: Text("FlatButton"),
        //   splashColor: Colors.grey,
        //   textColor: Theme.of(context).accentColor,
        //   onPressed: () => {},
        //   elevation: 0,
        // ),
        SizedBox(width: 16,),
        RaisedButton.icon(
          label: Text("FlatButton Icon"),
          icon: Icon(Icons.view_headline),
          splashColor: Colors.grey,
          color: Theme.of(context).accentColor,
          textColor: Colors.white,
          onPressed: () => {},
          elevation: 12,
        ),
      ],
    );
    // Cain 描边按钮
    final Widget outlineButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // Cain 斜角矩形
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(10)
              // )
              shape: StadiumBorder(
              )
            )
          ),
          child: OutlineButton(
            child: Text("FlatButton"),
            onPressed: () => {},
            // Cain 描边颜色
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            // highlightColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16,),
        RaisedButton.icon(
          label: Text("FlatButton Icon"),
          icon: Icon(Icons.view_headline),
          splashColor: Colors.grey,
          color: Theme.of(context).accentColor,
          textColor: Colors.white,
          onPressed: () => {},
          elevation: 12,
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            outlineButton,
          ],
        ),
      ),
    );
  }
}
class WidgetDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonDemo"),
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

class FloatingActionButtonDemo extends StatelessWidget {

  final Widget _floatingActionButton = FloatingActionButton(

    child: Icon(Icons.add),
    backgroundColor: Colors.black87,
    elevation: 0,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(30)
    // ),
    onPressed: () {

    },
  );
  
  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    icon: Icon(Icons.add),
    label: Text("Add"),
    onPressed: () {},
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonDemo"),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
        shape: CircularNotchedRectangle(),
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