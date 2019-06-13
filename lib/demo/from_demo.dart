import 'package:flutter/material.dart';

class FromDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Demo"),
        elevation: 0,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFieldDemo(),
              Register()
            ],
          ),
        ),
      )
    );
  }
}

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final registerFormKey = GlobalKey<FormState>();
  String username,password;
  bool autovalidate = false;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Form(
         key: registerFormKey,
         child: Column(
           children: <Widget>[
             TextFormField(
               decoration: InputDecoration(
                 labelText: "Username",
                 helperText: ""
               ),
               onSaved: (value) {
                 username = value;
               },
               validator: validateUsername,
               autovalidate: autovalidate,
             ),
             TextFormField(
               obscureText: true,
               decoration: InputDecoration(
                 labelText: "Password",
                 helperText: "",
               ),
               onSaved: (value) {
                 password = value;
               },
               validator: validatePassword,
               autovalidate: autovalidate,
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               width: double.infinity,
               child: RaisedButton(
                 color: Theme.of(context).accentColor,
                 child: Text("Register", style: TextStyle(color: Colors.white)),
                 elevation: 0,
                 onPressed: submitRegisterForm,
               )
             )
           ],
         ),
       ),
    );
  }

  submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {

      registerFormKey.currentState.save();
      
      debugPrint("username: $username");
      debugPrint("password: $password");

      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Registering..."),
        )
      );
    }
    else {
      autovalidate = true;
    }
  }

  String validateUsername(String value) {

    if (value.isNotEmpty) {

      return null;
    }

    return "Username is empty";
  }

  String validatePassword(String value) {

  if (value.isNotEmpty) {

      return null;
    }

    return "Password is empty";
  }
}

class TextFieldDemo extends StatefulWidget{
  TextFieldDemoState createState() => TextFieldDemoState();
}
  
class TextFieldDemoState extends State<TextFieldDemo> {

  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() { 
    super.initState();
    _textEditingController.text = "hi";
    _textEditingController.addListener(
      () {
        debugPrint("input: ${_textEditingController.text}");
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: _textEditingController,
      // onChanged:(value) {
      //   debugPrint("input: $value");
      // },
      onSubmitted: (value) {
        debugPrint("submit: $value");
      },
      decoration: InputDecoration(
        icon: Icon(Icons.text_fields),
        labelText: "Title",
        hintText: "Enter the post title.",
        // border: InputBorder.none,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.red[100]
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Theme.of(context).accentColor
    );
  }
}