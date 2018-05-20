import 'dart:async';
import 'dart:convert';

import 'package:connpass_flutter/model/Events.dart';
import 'package:connpass_flutter/model/EventsConverter.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

class ConnpassAPI {
  final String URL = "https://connpass.com/api/v1/event/";

  Future<Events> fetchEvents() {
    return _fetchEvents();
  }

  Future<Events> _fetchEvents() {
    return http.get(URL).then((http.Response res) {
      return EventsConverter.fromJson(json.decode(res.body));
    });
  }
}
