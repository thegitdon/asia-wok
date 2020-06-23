import 'package:asia_wok/src/ui/customer/home_customer_ui.dart';
//import 'package:asia_wok/src/ui/customer/home_ui.dart';
import 'package:asia_wok/src/ui/home/home_ui.dart';
import 'package:flutter/material.dart';
/*
class LoginPage extends StatelessWidget {
  final TextEditingController unameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          //title: Text('Sprint 0 :-)'),
          ),
      /*body: Center( //Column, typeOfListToLeft, children, Text(); Column, children, Row( children, Text()) Horizontal leftToR
        child: Text('Ronald')
      ),*/
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: unameController,
              decoration:
                  InputDecoration(labelText: 'username or email address'),
            ),
          ),
          /*TextField(
            decoration: InputDecoration(
              labelText: 'email'
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(labelText: 'password'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    //anonFunctToNav
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomePage(unameController.text)));
                  },
                  child: Text('Sign in'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}*/

class LoginPage extends StatefulWidget {
  @override
  /*State<StatefulWidget> createState() {
    return null;
  }*/
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String _email, _pass;
  final TextEditingController unameController = new TextEditingController();

  void _submit() {
    if (formKey.currentState.validate()) {
      //true, false
      formKey.currentState.save(); //onSaved
      print(_email + ", " + _pass);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeCustomerPage(unameController.text)));
    } else {
      print("Error!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          //title: Text('Sprint 0 :-)'),
          ),
      /*body: Center( //Column, typeOfListToLeft, children, Text(); Column, children, Row( children, Text()) Horizontal leftToR
        child: Text('Ronald')
      ),*/
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column( //stack of widgets Text, Text, leftTo UptoDown //mainAxisAlig: .end
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //Padding(
                //padding: const EdgeInsets.all(8.0),
                TextFormField(
                  //keyboardType: TextInputType.emailAddress,
                  controller: unameController,
                  decoration:
                      InputDecoration(labelText: 'username or email address'),
                  validator: (value) => !value.contains('@') ? 'Error!' : null,
                  onSaved: (value) => _email = value,
                ),
                //),
                /*TextField(
            decoration: InputDecoration(
              labelText: 'email'
            ),
          ),*/
                //Padding(
                //padding: const EdgeInsets.all(8.0),
                TextFormField(
                  //keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(labelText: 'password'),
                  validator: (value) => value.length < 8 ? 'Error!' : null,
                  onSaved: (value) => _pass = value,
                  obscureText: true,
                ),
                //),
                Row( // horizontal, leftToR
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: _submit,
                        child: Text('Sign in'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
