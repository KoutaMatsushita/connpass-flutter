import 'package:connpass_flutter/model/EventType.dart';

class EventTypeConverter {
  static EventType fromJson(json) {
    EventType res;

    switch(json) {
      case "participation":
        res = EventType.PARTICIPATION;
        break;
      case "advertisement":
        res = EventType.ADVERTISEMENT;
        break;
      default:
        throw new CastError();
    }

    return res;
  }
}