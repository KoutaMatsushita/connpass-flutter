import 'package:connpass_flutter/model/Series.dart';

class SeriesConverter {
  static Series fromJson(Map<String, dynamic> json) {
    if(json == null) return null;

    return new Series(
        json['id'],
        json['title'],
        Uri.parse(json['url'])
    );
  }
}
