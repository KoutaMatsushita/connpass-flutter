import 'dart:async';

import 'package:connpass_flutter/ConnpassAPI.dart';
import 'package:connpass_flutter/EventListRow.dart';
import 'package:connpass_flutter/model/Events.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:flutter/material.dart';

class EventListView extends StatefulWidget {
  @override
  _EventListView createState() => new _EventListView();
}

class _EventListView extends State<EventListView> {
  List<EventListRow> _listRows = new List();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  _EventListView() {
    _onRefresh().then((_) {
      _refreshIndicatorKey.currentState.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new RefreshIndicator(
      key: _refreshIndicatorKey,
      child: new ListView(children: _listRows),
      onRefresh: _onRefresh,
    );
  }

  Future<List<Widget>> fetch() async {
    Events events = await ConnpassAPI().fetchEvents();
    return events.events
        .map((event) => new EventListRow(
            event: event,
            listener: (event) {
              FlutterWebBrowser.openWebPage(
                  url: event.eventUrl.toString(),
                  androidToolbarColor: Colors.blue
              );
            }))
        .toList();
  }

  Future<Null> _onRefresh() {
    _refreshIndicatorKey.currentState?.show();
    final Completer<Null> completer = new Completer<Null>();
    fetch().then((list) {
      setState(() {
        _listRows = list;
      });
      completer.complete();
    });
    return completer.future;
  }
}
