import 'package:connpass_flutter/model/Event.dart';
import 'package:flutter/material.dart';

typedef void EventClickListener(Event event);

class EventListRow extends StatefulWidget {
  final Event event;
  final EventClickListener listener;

  EventListRow({Key key, this.event, this.listener}) : super(key: key);

  @override
  _EventListRow createState() => _EventListRow(event, listener);
}

class _EventListRow extends State<EventListRow> {
  final Event event;
  final EventClickListener listener;

  _EventListRow(this.event, this.listener){}

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(
        event.title,
        style: new TextStyle(
          color: Colors.black87,
          fontSize: 16.0,
        ),
      ),
      selected: true,
      onTap: () {
        listener(event);
      },
    );
  }
}