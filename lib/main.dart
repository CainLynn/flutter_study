import 'package:flutter/material.dart';
import 'package:flutter_study/demo/from_demo.dart';
import 'package:flutter_study/demo/material_components.dart';
import 'package:flutter_study/demo/sliver_demo.dart';
import 'package:flutter_study/demo/state/state_management_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/hello_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/navigation_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    // Cain MateriaApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      home: Home(),
      initialRoute: "/mcd",
      routes: {
        "/navigationDemo": (context) => NavigationDemo(),
        "/about": (context) => PageDemo(title: "About"),
        "/fromDemo": (context) => FromDemo(),
        "/mcd": (context) => MaterialComponents(),
        "/state-management": (context) => StateManagementDemo()
      },
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(225, 250, 130, 180),
        splashColor: Colors.white70,
        accentColor: Colors.blue
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    // Cain 页签Controller控制器
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: "Navigration",
          //   onPressed: () => debugPrint("Navigration Button is Pressed"),
          // ),
          title: Text("Flutter Study For Cain"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => debugPrint("Navigration Button is Pressed"),
            ),
          ],
          elevation: 0.0,
          // Cain 页签Bar按钮
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
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.dashboard),
              ),
              Tab(
                icon: Icon(Icons.view_agenda),
              ),
            ],
          ),
        ),
        // Cain 页签View视图
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            // ViewDemo(),
            SliverDemo()
          ],
        ),
        // Cain 侧边滑动栏
        drawer: DrawerDemo(),
        // Cain 底部导航栏
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}