import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Scaffold Widget Tutorial',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Scaffold Example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.zero,
        child: new Scaffold(
            backgroundColor: Colors.amber,
            appBar: AppBar(title: Text('Hello Flutter'), centerTitle: true),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Increment',
              child: Icon(Icons.add),
              elevation: 6.0,
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Drawer layout Item 1'),
                    onTap: () {
                      // This line code will close drawer programatically....
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 2.0,
                  ),
                ],
              ),
            ),
            persistentFooterButtons: <Widget>[
              Icon(Icons.apps),
              Icon(Icons.menu)
            ],
            body: Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'This is body of Scaffold Widget wrapped inside Container Widget, which is further wrapped inside Center Widget',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
              ),
            )));
  }
}
