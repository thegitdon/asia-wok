import 'package:asia_wok/src/templates/list_view_template.dart';
import 'package:flutter/material.dart';
import 'package:asia_wok/src/app.dart';

class HomePage extends StatefulWidget {
  final String uname;
  HomePage(this.uname);
  @override
  /*State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;*/
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    // TODO: implement build
    /*return Scaffold(
      appBar: AppBar(
        title: Text(widget.uname),
      ),
      /*body: Center(
        //child: Text('Welcome, ${widget.uname}!'),//
        //child: Text(wordPair.asCamelCase),
        child: RandomWords(),
      ),*/
    );*/
    /*return MaterialApp(
      title: widget.uname,
      home: RandomWords(),
    );*/
    return Scaffold(
      appBar: AppBar(title: Text('Hi, ${widget.uname}!')),
      body: Center(
        //child: RandomWords(),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder:
                        (context) => /*RandomWords()*/ ListViewTemplate()));
          },
          child: Text('¿?'),
        ),
      ),
    );
  }
}
