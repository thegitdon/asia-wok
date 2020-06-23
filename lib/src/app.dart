import 'package:asia_wok/src/ui/login/login_ui.dart';
import 'package:asia_wok/src/ui/movie_list_t.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue, //primaryColor
      ),
      //home: createContent(),
      //home: new LoginPage() //first to render, Scaff(body: goTo())
      home: Scaffold(
        body: MovieList(),
      ),
    );
  }

  //skeleton of the project, Project structure

  //createContent() {return Text("asia-wok");}
}
/*
class RandomWordsState extends State<RandomWords> {
  //state class, app's logic resides here
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _suggestions = <WordPair>[]; // saving suggested word pairings
    final Set<WordPair> _saved = <WordPair>{}; // stores the word that user favorited, dif bet Set: does not allow duplicate entries. & List
    final _biggerFont = const TextStyle(fontSize: 18.0);
    final wPair = WordPair.random(); //check dif bet inside outside build method
    //Widget _buildSuggestions() {}
    Widget _buildRow(WordPair pair) {
      final bool alreadySaved = _saved
          .contains(pair); //check to ensure that a word has not added to fav
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
        trailing: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: () {
          setState(() {
            // to notify that state has changed
            if (alreadySaved) {
              _saved.remove(pair);
            } else {
              _saved.add(pair);
            }
          });
        },
      );
    }

    Widget _buildSuggestions() {
      return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: /*1*/ (context, i) {
            //two parameters are passed, BuildContext, row iterator i
            //
            if (i.isOdd) return Divider(); /*2*/

            final index = i ~/ 2; /*3*/
            if (index >= _suggestions.length) {
              _suggestions.addAll(generateWordPairs().take(10)); /*4*/
            }
            return _buildRow(_suggestions[index]);
          });
    }

    void _pushSaved() {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          // Add 20 lines from here...
          builder: (BuildContext context) {
            //returns a Scaffold
            final /*Iterable<ListTile>*/ tiles = _saved.map(
              (WordPair pair) {
                return ListTile(
                  title: Text(
                    pair.asPascalCase,
                    style: _biggerFont,
                  ),
                );
              },
            );
            final /*List<Widget>*/ divided = ListTile.divideTiles(
              //add horizontal spacing bet each ListTitle
              context: context,
              tiles: tiles,
            ).toList();
            return Scaffold(
              // Add 6 lines from here...
              appBar: AppBar(
                title: Text('Saved Suggestions'),
              ),
              body: ListView(children: divided),
            );
          },
        ),
      );
    }

    //return Text(wPair.asLowerCase);
    return Scaffold(
      appBar: AppBar(
        title: Text(':-)'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
    //}
  }
  /**
   * This method builds the ListView that displays the suggested word pairing.
   * ListView, provides a builder property, itemBuilder, that’s a factory builder and callback function specified as an anonymous function.
   * Two parameters are passed to the function—the BuildContext, and the row iterator, i.
   * 
   */
}

class RandomWords extends StatefulWidget {
  //creates an instance of a State class.
  @override
  RandomWordsState createState() => RandomWordsState();
}
*/
//Scaffold, provides a default app bar, title, and a body property that holds the widget tree for the home screen. subtree (?)
//build(), describes how to display the widget

/** 
   * Stateless widgets are immutable, meaning that their properties can’t change—all values are final.
   * Stateful widgets maintain state that might change during the lifetime of the widget.
   * requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class.
   * The StatefulWidget class is, itself, immutable, but the State class persists over the lifetime of the widget.
   * 
  */

/**
   * To do this, you'll modify the _buildRow function. If a word entry has already been added to favorites, tapping it again removes it from favorites. When a tile has been tapped, the function calls setState() to notify the framework that state has changed.
   * Tip: In Flutter's reactive style framework, calling setState() triggers a call to the build() method for the State object, resulting in an update to the UI.
   * 
   */
/**
   *  Tip: Some widget properties take a single widget (child), and other properties, such as action, take an array of widgets (children), as indicated by the square brackets.
   */
/**
   * Next, you'll build a route and push it to the Navigator's stack. This action changes the screen to display the new route. The content for the new page is built in MaterialPageRoute's builder property, in an anonymous function.
   * 
   */
