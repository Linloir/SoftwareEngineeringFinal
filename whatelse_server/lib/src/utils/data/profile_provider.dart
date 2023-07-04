import 'package:fixnum/fixnum.dart';
import 'package:whatelse_server/src/generated/grpc/profile.pb.dart';
import 'package:whatelse_server/src/generated/grpc/user.pb.dart';
import 'package:whatelse_server/src/generated/prisma/prisma_client.dart';
import 'package:whatelse_server/src/model/exception.dart';
import 'package:whatelse_server/src/utils/storage/prisma_provider.dart';

abstract class ProfileProvider {
  /// Insert, update or delete a profile instance
  /// 
  /// Remember to verify whether the user has the permission to
  /// perform the put operation before calling this function.
  /// 
  /// If the user does not exist in the database, a [DependencyNotFoundException]
  /// will be thrown. It's expected that this exception should be returned to
  /// the client, and the client should remove the related record from its
  /// local database.
  static Future<void> put({
    required ProfileInfo grpcProfile,
  }) async {
    // check user
    final user = await PrismaProvider.client.user.findUnique(
      where: UserWhereUniqueInput(
        id: grpcProfile.user.id.toInt(),
      ),
    );
    if (user == null) {
      throw DependencyNotFoundException();
    }
    // put profile
    await PrismaProvider.client.profile.upsert(
      where: ProfileWhereUniqueInput(
        userIdName: ProfileUserIdNameCompoundUniqueInput(
          name: grpcProfile.name,
          userId: grpcProfile.user.id.toInt(),
        ),
      ),
      create: ProfileCreateInput(
        name: grpcProfile.name,
        color: grpcProfile.color,
        icon: grpcProfile.icon,
        user: UserCreateNestedOneWithoutProfilesInput(
          connect: UserWhereUniqueInput(
            id: grpcProfile.user.id.toInt(),
          ),
        ),
        updateAt: BigInt.from(grpcProfile.updateAt.toInt()),
        syncAt: BigInt.from(DateTime.now().millisecondsSinceEpoch),
        deleteAt: BigInt.from(grpcProfile.deleteAt.toInt()),
      ),
      update: ProfileUpdateInput(
        name: StringFieldUpdateOperationsInput(
          set: grpcProfile.name,
        ),
        color: StringFieldUpdateOperationsInput(
          set: grpcProfile.color,
        ),
        icon: StringFieldUpdateOperationsInput(
          set: grpcProfile.icon,
        ),
        user: UserUpdateOneRequiredWithoutProfilesNestedInput(
          connect: UserWhereUniqueInput(
            id: grpcProfile.user.id.toInt(),
          ),
        ),
        updateAt: BigIntFieldUpdateOperationsInput(
          set: BigInt.from(grpcProfile.updateAt.toInt()),
        ),
        syncAt: BigIntFieldUpdateOperationsInput(
          set: BigInt.from(DateTime.now().millisecondsSinceEpoch),
        ),
        deleteAt: BigIntFieldUpdateOperationsInput(
          set: BigInt.from(grpcProfile.deleteAt.toInt()),
        ),
      ),
    );
  }

  /// Fetch all profiles of [userId] that have been synced after [lastFetch]
  /// 
  /// If [lastFetch] is null, all profiles will be fetched.
  /// 
  /// If the [userId] does not correspond to any user in the database, a
  /// [DependencyNotFoundException] will be thrown. It's expected that this
  /// exception should be returned to the client, and the client should
  /// regard such response as an empty list.
  static Future<ProfileList> fetch({
    required int userId,
    int? lastFetch,
  }) async {
    // fetch user
    final user = await PrismaProvider.client.user.findUnique(
      where: UserWhereUniqueInput(
        id: userId,
      ),
    );
    if (user == null) {
      throw DependencyNotFoundException();
    }
    // fetch profiles
    final profiles = await PrismaProvider.client.profile.findMany(
      where: ProfileWhereInput(
        user: UserRelationFilter(
          $is: UserWhereInput(
            id: IntFilter(
              equals: userId,
            ),
          ),
        ),
        syncAt: lastFetch == null ? null : BigIntFilter(
          gte: BigInt.from(lastFetch),
        ),
      ),
    );
    // return
    return ProfileList(
      profiles: profiles.map((p) => ProfileInfo(
        name: p.name,
        color: p.color,
        icon: p.icon,
        user: UserInfo(
          id: Int64(user.id),
          name: user.name,
        ),
        updateAt: Int64(p.updateAt.toInt()),
        deleteAt: Int64(p.deleteAt.toInt()),
      )),
    );
  }
}