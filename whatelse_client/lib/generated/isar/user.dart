import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/profile.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  
  @Index(unique: false)
  int? rId;

  @Backlink(to: 'user')
  final profiles = IsarLinks<Profile>();

  late String name;

  @Index(unique: false, replace: false)
  String? email;

  @Index(unique: false, replace: false)
  String? phone;

  String? avatarRef;

  String? unionName;

  String? tencentName;

  String? appleName;

  /// The last fetch timestamp of all the information related
  /// to this profile.
  /// 
  /// [fetchAt] value will be updated once a fetch operation
  /// is **dispatched**.
  int? fetchAt;

  /// The last full sync timestamp of all the information related
  /// to this profile
  /// 
  /// [syncAt] value will be updated once a full sync is **completed**.
  int? syncAt;
}
