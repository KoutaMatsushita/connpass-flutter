import 'package:connpass_flutter/model/EventType.dart';
import 'package:connpass_flutter/model/Series.dart';

class Event {
  /// イベントID
  final int eventId;

  /// タイトル
  final String title;

  /// キャッチ
  final String catchString;

  /// 概要(HTML形式)
  final String description;

  /// connpass.com 上のURL
  final Uri eventUrl;

  /// Twitter のハッシュタグ
  final String hashTag;

  /// イベント開催日時 (ISO-8601形式)
  final DateTime startedAt;

  /// イベント終了日時 (ISO-8601形式)
  final DateTime endedAt;

  /// 定員
  final int limit;

  /// イベント参加タイプ
  final EventType eventType;

  /// グループ
  final Series series;

  /// 開催場所
  final String address;

  /// 開催会場
  final String place;

  /// 開催会場の緯度
  final double lat;

  /// 開催会場の経度
  final double lon;

  /// 管理者のID
  final int ownerId;

  /// 管理者のニックネーム
  final String ownerNickname;

  /// 管理者の表示名
  final String ownerDisplayName;

  /// 参加者数
  final int accepted;

  /// 補欠者数
  final int waiting;

  /// 更新日時 (ISO-8601形式)
  final DateTime updatedAt;

  Event(
      this.eventId,
      this.title,
      this.catchString,
      this.description,
      this.eventUrl,
      this.hashTag,
      this.startedAt,
      this.endedAt,
      this.limit,
      this.eventType,
      this.series,
      this.address,
      this.place,
      this.lat,
      this.lon,
      this.ownerId,
      this.ownerNickname,
      this.ownerDisplayName,
      this.accepted,
      this.waiting,
      this.updatedAt);
}
