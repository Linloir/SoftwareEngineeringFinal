import 'package:isar/isar.dart';

part 'credential.g.dart';

@collection
class Credential {
  final Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String userClaim;

  late String password;
}
