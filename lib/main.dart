// main.dart

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
        appBar: AppBar(
          title: Text('Hello Flutter AppBar'),
          centerTitle: true,
          leading: Icon(Icons.menu),
        ),
      ));
}
}