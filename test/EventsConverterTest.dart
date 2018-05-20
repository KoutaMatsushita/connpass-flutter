import 'dart:convert';
import 'dart:io';
import 'dart:io' show Platform;

import 'package:connpass_flutter/model/Events.dart';
import 'package:connpass_flutter/model/EventsConverter.dart';
import 'package:flutter_test/flutter_test.dart';
import "package:path/path.dart" show dirname, join;

void main() {
  test('convert events', () async {
    String currentDir = Directory.current.path;
    File jsonFile = File(join(currentDir, 'test', 'events.json'));
    String jsonStr = await jsonFile.readAsString();

    Map<String, dynamic> jsonDecoded = json.decode(jsonStr);
    Events events = EventsConverter.fromJson(jsonDecoded);

    expect(jsonDecoded['results_returned'], events.events.length);
  });
}
