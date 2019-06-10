import 'package:flutter/material.dart';

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

    final Widget fixedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130,
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
        )
      ],
    );

    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text("Button"),
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
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text("Button"),
            onPressed: () => {},
            // Cain 描边颜色
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            // highlightColor: Colors.grey,
          ),
        ),
      ],
    );
    
    final Widget buttonBar = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32)
            )
          ),
          child: 
            ButtonBar(
              children: <Widget>[
                OutlineButton(
                  child: Text("Button"),
                  onPressed: () => {},
                  // Cain 描边颜色
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  // highlightColor: Colors.grey,
                ),
                OutlineButton(
                  child: Text("Button"),
                  onPressed: () => {},
                  // Cain 描边颜色
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  // highlightColor: Colors.grey,
                )
              ],
            ),
        )
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
            flatButtonDemo,
            raisedButton,
            outlineButton,
            fixedButton,
            expandedButton,
            buttonBar
          ],
        ),
      ),
    );
  }
}