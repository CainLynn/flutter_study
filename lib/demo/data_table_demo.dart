import 'package:flutter/material.dart';
import 'package:flutter_study/model/post.dart';

class DataTableDemo extends StatefulWidget {
 DataTableDemo({Key key}) : super(key: key);

  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChipDemo"),
        elevation: 0,
      ),
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              DataTable(
                columns: [
                  DataColumn(
                      label: Container(
                    // width: 150,
                    child: Text("title"),
                  )),
                  DataColumn(
                    label: Text("Author"),
                  ),
                  DataColumn(
                    label: Container(
                      width: 180,
                      child: Text("Image"),  
                    )
                  ),
                ],
                rows: posts.map((post) {
                  return DataRow(
                    selected: post.selected,
                    onSelectChanged: (bool value) {
                      setState(() {
                        if(post.selected!=value){
                          post.selected = value;
                        }
                      });
                    },
                    cells: [
                      DataCell(Text(post.title)),
                      DataCell(Text(post.author)),
                      DataCell(Image.network(post.imageUrl,)),
                    ]
                  );
                }).toList(),
              )
            ],
          )),
    );
  }
}
