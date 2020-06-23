import 'package:asia_wok/src/ui/home/home_ui.dart';
import 'package:asia_wok/src/ui/login/login_ui.dart';
import 'package:flutter/material.dart';

class HomeCustomerPage extends StatefulWidget {
  final String uname;
  HomeCustomerPage(this.uname);

  static const String ab = 'A';
  static const String cd = 'B';
  static const String ef = 'Cerrar sesión';

  static const List<String> abcdef = <String>[ab, cd, ef];
  @override
  _HomeCustomerPage createState() => _HomeCustomerPage();
}

class _HomeCustomerPage extends State<HomeCustomerPage> {
  //class

  void toAct(String x) {
    //print('...');
    if (x == HomeCustomerPage.ef) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else if (x == HomeCustomerPage.cd) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => /*RandomWords()*/ HomePage(widget.uname)));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          PopupMenuButton<String>(
              onSelected: toAct,
              itemBuilder: (BuildContext context) {
                return HomeCustomerPage.abcdef.map((String choice) {
                  return PopupMenuItem<String>(
                    //for each choice
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              })
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[new Text(':-)')],
        ),
      ),
    );
  }
}
