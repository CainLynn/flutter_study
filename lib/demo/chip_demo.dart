import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  ChipDemo({Key key}) : super(key: key);

  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ["Apple", "Banana", "Lemon"];
  String _action = "Nothing";
  List<String> _selected = [];
  String _choice = "Lemon";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChipDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Wrap(
              spacing: 16,
              runSpacing: 8,
              children: <Widget>[
                Chip(
                  label: Text("Life Test"),
                ),
                Chip(
                  label: Text("Sunset"),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text("Cain Lynn"),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("喵"),
                  ),
                ),
                Chip(
                  label: Text("Cain Lynn"),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i2.hdslb.com/bfs/face/0d646b3fe06b5f10557552fb9899461c70c72763.jpg@72w_72h.webp"),
                  ),
                ),
                Chip(
                  label: Text("City"),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: "Remove this tag",
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text("ActionChip: $_action"),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text("FilterChip: ${_selected.toString()}"),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    // 多选
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          }
                          else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text("ChoiceChip: $_choice"),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    // 单选
                    return ChoiceChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      selectedColor: Colors.black,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ["Apple", "Banana", "Lemon"];
            _action = "Nothing";
            _selected = [];
            _choice = "Lemon";
          });
        },
      ),
    );
  }
}