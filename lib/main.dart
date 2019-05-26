import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/hello_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    // Cain MateriaApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(225, 250, 130, 180),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: "Navigration",
          //   onPressed: () => debugPrint("Navigration Button is Pressed"),
          // ),
          title: Text("Hello"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => debugPrint("Navigration Button is Pressed"),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black26,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.schedule),
              ),
              Tab(
                icon: Icon(Icons.data_usage),
              ),
              Tab(
                icon: Icon(Icons.dashboard),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.filter_9_plus, size: 128, color: Colors.black12),
            Icon(Icons.scatter_plot, size: 128, color: Colors.black12),
            Icon(Icons.calendar_view_day, size: 128, color: Colors.black12),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("HEADER"),
                decoration: BoxDecoration(
                  color: Colors.grey[100]
                ),
              ),
              ListTile(
                leading: Icon(Icons.message, color: Colors.black12, size: 22),
                title: Text("Messages", textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22),
                
              ),
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.black12, size: 22),
                title: Text("Favorite", textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22),
                
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.black12, size: 22),
                title: Text("Settings", textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22),
                onTap: () => Navigator.pop(context),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}