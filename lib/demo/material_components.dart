import 'package:flutter/material.dart';
import 'package:flutter_study/demo/alert_dialog_demo.dart';
import 'package:flutter_study/demo/bottom_sheet_demo.dart';
import 'package:flutter_study/demo/card_demo.dart';
import 'package:flutter_study/demo/chip_demo.dart';
import 'package:flutter_study/demo/data_table_demo.dart';
import 'package:flutter_study/demo/date_time_demo.dart';
import 'package:flutter_study/demo/expansion_panel_demo.dart';
import 'package:flutter_study/demo/paginated_data_table_demo.dart';
import 'package:flutter_study/demo/simple_dialog_demo.dart';
import 'package:flutter_study/demo/slider_demo.dart';
import 'package:flutter_study/demo/snack_bar_demo.dart';
import 'package:flutter_study/demo/stepper_demo.dart';
import 'button_demo.dart';
import 'floating_action_button_demo.dart';
import 'popup_menu_button_demo.dart';
import 'from_demo.dart';
import 'check_demo.dart';
import 'radio_demo.dart';
import 'switch_demo.dart';

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
            title: "StepperDemo",
            page: StepperDemo(),
          ),
          ListItem(
            title: "CardDemo",
            page: CardDemo(),
          ),
          ListItem(
            title: "PaginatedDataTableDemo",
            page: PaginatedDataTableDemo(),
          ),
          ListItem(
            title: "DataTableDemo",
            page: DataTableDemo(),
          ),
          ListItem(
            title: "ChipDemo",
            page: ChipDemo(),
          ),
          ListItem(
            title: "ExpansionPanelDemo",
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            title: "SnackBarDemo",
            page: SnackBarDemo(),
          ),
          ListItem(
            title: "BottomSheet",
            page: BottomSheetDemo(),
          ),
          ListItem(
            title: "AlertDialog",
            page: AlertDialogDemo(),
          ),
          ListItem(
            title: "SimpleDialog",
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: "DateTime",
            page: DateTimeDemo(),
          ),
          ListItem(
            title: "Slider",
            page: SliderDemo(),
          ),
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