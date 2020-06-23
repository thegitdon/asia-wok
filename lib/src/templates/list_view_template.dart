import 'package:flutter/material.dart';

class ListViewTemplate extends StatefulWidget {
  @override
  ListState createState() => ListState();
}

class ListState extends State<ListViewTemplate> {
  List<String> wokItems = new List();

  @override
  void initState() {
    // TODO: implement initState
    getItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: wokItems.length != 0
          ? ListView.builder(
              //GridView, gridDelegate: SliverGDWithFCA # Columnas
              itemCount:
                  wokItems.length, //need to update in run time so setState
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(wokItems[index]),
                  onTap: () => itemPress(wokItems[index]),
                );
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  getItems() async {
    await Future.delayed(Duration(seconds: 2)); //if CircularProgress
    List<String> fetchData = ['Pad Thai', 'Curry Thai', 'Kadai'];

    setState(() {
      wokItems.addAll(fetchData);
    });
  }

  itemPress(String item) {
    print(item);
  }
}
