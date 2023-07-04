import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/channel.dart';
import 'package:whatelse_client/generated/isar/profile.dart';

part 'channel_subscription.g.dart';

enum SubscriptionType {
  autoReject,
  normal,
  autoAccept,
}

@collection
class ChannelSubscription {
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  int? rId;

  final profile = IsarLink<Profile>();

  final channel = IsarLink<Channel>();

  late bool shareRecord;

  @enumerated
  late SubscriptionType type;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;
}
