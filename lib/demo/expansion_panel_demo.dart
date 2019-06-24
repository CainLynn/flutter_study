import 'package:flutter/material.dart';

class ExpansionPanelItem {

  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  ExpansionPanelDemo({Key key}) : super(key: key);

  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {

  bool _isExpanded = false;
  List<ExpansionPanelItem> _expansionPanelItem;

  @override
  void initState() {
    
    super.initState();
    _expansionPanelItem = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: "Panel A.",
        body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text("Content for Panel A."),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
        headerText: "Panel B.",
        body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text("Content for Panel B."),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
        headerText: "Panel C.",
        body: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text("Content for Panel C."),
        ),
        isExpanded: false
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ExpansionPanelDemo"),
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ExpansionPanelList(
                expansionCallback: (int panelIndex, bool isExpanded){
                  setState(() {
                    _expansionPanelItem[panelIndex].isExpanded = !isExpanded;
                  });
                },
                children: _expansionPanelItem.map(
                  (ExpansionPanelItem item) {
                    return ExpansionPanel(
                      isExpanded: item.isExpanded,
                      body: item.body,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            item.headerText,
                            style: Theme.of(context).textTheme.title,
                          ),
                        );
                      }
                    );
                  }
                ).toList(),
              )
            ],
          ),
        ));
  }
}