import 'package:connpass_flutter/model/Event.dart';
import 'package:connpass_flutter/model/EventConverter.dart';
import 'package:connpass_flutter/model/Events.dart';

class EventsConverter {
  static Events fromJson(Map<String, dynamic> jsonData) {
    List decodedEvents = jsonData['events'];
    List<Event> events = decodedEvents.map((event) {
      return EventConverter.fromJson(event);
    }).toList();

    return new Events(jsonData['results_returned'],
        jsonData['results_available'], jsonData['results_start'], events);
  }
}
