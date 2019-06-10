import 'package:flutter/material.dart';

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