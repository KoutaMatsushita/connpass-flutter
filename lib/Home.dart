import 'package:connpass_flutter/ConnpassAPI.dart';
import 'package:connpass_flutter/EventListView.dart';
import 'package:connpass_flutter/model/Events.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _listWidgets = new List();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Builder(builder: (BuildContext context) {
          return new Center(
            child: new EventListView(),
          );
        }));
  }
}
