import 'package:connpass_flutter/model/Event.dart';
import 'package:connpass_flutter/model/EventTypeConverter.dart';
import 'package:connpass_flutter/model/SeriesConverter.dart';

class EventConverter {
  static Event fromJson(Map<String, dynamic> json) {
    return new Event(
        json['event_id'],
        json['title'],
        json['catch'],
        json['description'],
        Uri.parse(json['event_url']),
        json['hash_tag'],
        DateTime.parse(json['started_at']),
        DateTime.parse(json['ended_at']),
        json['limit'],
        EventTypeConverter.fromJson(json['event_type']),
        SeriesConverter.fromJson(json['series']),
        json['address'],
        json['place'],
        json['lat'] != null ? double.parse(json['lat']) : null,
        json['lon'] != null ? double.parse(json['lon']) : null,
        json['owner_id'],
        json['owner_nickname'],
        json['owner_display_name'],
        json['accepted'],
        json['waiting'],
        DateTime.parse(json['updated_at']));
  }
}
