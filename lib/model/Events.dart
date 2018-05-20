import 'package:connpass_flutter/model/Event.dart';

class Events {
  /// 含まれる検索結果の件数
  final int resultsReturned;

  /// 検索結果の総件数
  final int resultsAvailable;

  /// 検索の開始位置
  final int resultsStart;

  /// 検索結果のイベントリスト
  final List<Event> events;

  Events(this.resultsReturned, this.resultsAvailable, this.resultsStart, this.events);
}
