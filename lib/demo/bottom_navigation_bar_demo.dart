import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _BootomNavigationBarDemoState();
}

class _BootomNavigationBarDemoState extends State<BottomNavigationBarDemo> {

  int _currentIndex = 0;

  void _onTapHandler(int index) {
    
    setState(() {
      
      debugPrint(index.toString());
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.yellow[800],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text("Explore")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text("History")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text("List")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Person")
        ),
      ],
    );
  }
}