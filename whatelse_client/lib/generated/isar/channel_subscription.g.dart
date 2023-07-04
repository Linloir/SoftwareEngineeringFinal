// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_subscription.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChannelSubscriptionCollection on Isar {
  IsarCollection<ChannelSubscription> get channelSubscriptions =>
      this.collection();
}

const ChannelSubscriptionSchema = CollectionSchema(
  name: r'ChannelSubscription',
  id: -1313482833929583979,
  properties: {
    r'deleteAt': PropertySchema(
      id: 0,
      name: r'deleteAt',
      type: IsarType.long,
    ),
    r'rId': PropertySchema(
      id: 1,
      name: r'rId',
      type: IsarType.long,
    ),
    r'shareRecord': PropertySchema(
      id: 2,
      name: r'shareRecord',
      type: IsarType.bool,
    ),
    r'type': PropertySchema(
      id: 3,
      name: r'type',
      type: IsarType.byte,
      enumMap: _ChannelSubscriptiontypeEnumValueMap,
    ),
    r'updateAt': PropertySchema(
      id: 4,
      name: r'updateAt',
      type: IsarType.long,
    )
  },
  estimateSize: _channelSubscriptionEstimateSize,
  serialize: _channelSubscriptionSerialize,
  deserialize: _channelSubscriptionDeserialize,
  deserializeProp: _channelSubscriptionDeserializeProp,
  idName: r'id',
  indexes: {
    r'rId': IndexSchema(
      id: -5992642921347554951,
      name: r'rId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'rId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'profile': LinkSchema(
      id: -324062273578377369,
      name: r'profile',
      target: r'Profile',
      single: true,
    ),
    r'channel': LinkSchema(
      id: -3586413873617533963,
      name: r'channel',
      target: r'Channel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _channelSubscriptionGetId,
  getLinks: _channelSubscriptionGetLinks,
  attach: _channelSubscriptionAttach,
  version: '3.1.0',
);

int _channelSubscriptionEstimateSize(
  ChannelSubscription object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _channelSubscriptionSerialize(
  ChannelSubscription object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.deleteAt);
  writer.writeLong(offsets[1], object.rId);
  writer.writeBool(offsets[2], object.shareRecord);
  writer.writeByte(offsets[3], object.type.index);
  writer.writeLong(offsets[4], object.updateAt);
}

ChannelSubscription _channelSubscriptionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChannelSubscription();
  object.deleteAt = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.rId = reader.readLongOrNull(offsets[1]);
  object.shareRecord = reader.readBool(offsets[2]);
  object.type =
      _ChannelSubscriptiontypeValueEnumMap[reader.readByteOrNull(offsets[3])] ??
          SubscriptionType.autoReject;
  object.updateAt = reader.readLong(offsets[4]);
  return object;
}

P _channelSubscriptionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (_ChannelSubscriptiontypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          SubscriptionType.autoReject) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ChannelSubscriptiontypeEnumValueMap = {
  'autoReject': 0,
  'normal': 1,
  'autoAccept': 2,
};
const _ChannelSubscriptiontypeValueEnumMap = {
  0: SubscriptionType.autoReject,
  1: SubscriptionType.normal,
  2: SubscriptionType.autoAccept,
};

Id _channelSubscriptionGetId(ChannelSubscription object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _channelSubscriptionGetLinks(
    ChannelSubscription object) {
  return [object.profile, object.channel];
}

void _channelSubscriptionAttach(
    IsarCollection<dynamic> col, Id id, ChannelSubscription object) {
  object.id = id;
  object.profile.attach(col, col.isar.collection<Profile>(), r'profile', id);
  object.channel.attach(col, col.isar.collection<Channel>(), r'channel', id);
}

extension ChannelSubscriptionQueryWhereSort
    on QueryBuilder<ChannelSubscription, ChannelSubscription, QWhere> {
  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhere> anyRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'rId'),
      );
    });
  }
}

extension ChannelSubscriptionQueryWhere
    on QueryBuilder<ChannelSubscription, ChannelSubscription, QWhereClause> {
  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [null],
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      rIdEqualTo(int? rId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [rId],
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      rIdNotEqualTo(int? rId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rId',
              lower: [],
              upper: [rId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rId',
              lower: [rId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rId',
              lower: [rId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'rId',
              lower: [],
              upper: [rId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      rIdGreaterThan(
    int? rId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rId',
        lower: [rId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      rIdLessThan(
    int? rId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rId',
        lower: [],
        upper: [rId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterWhereClause>
      rIdBetween(
    int? lowerRId,
    int? upperRId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rId',
        lower: [lowerRId],
        includeLower: includeLower,
        upper: [upperRId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ChannelSubscriptionQueryFilter on QueryBuilder<ChannelSubscription,
    ChannelSubscription, QFilterCondition> {
  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      deleteAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      deleteAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      deleteAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      deleteAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deleteAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      deleteAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deleteAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      deleteAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deleteAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      rIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      rIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      rIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      rIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      shareRecordEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shareRecord',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      typeEqualTo(SubscriptionType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      typeGreaterThan(
    SubscriptionType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      typeLessThan(
    SubscriptionType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      typeBetween(
    SubscriptionType lower,
    SubscriptionType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      updateAtEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      updateAtGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      updateAtLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      updateAtBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ChannelSubscriptionQueryObject on QueryBuilder<ChannelSubscription,
    ChannelSubscription, QFilterCondition> {}

extension ChannelSubscriptionQueryLinks on QueryBuilder<ChannelSubscription,
    ChannelSubscription, QFilterCondition> {
  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      profile(FilterQuery<Profile> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'profile');
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      profileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'profile', 0, true, 0, true);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      channel(FilterQuery<Channel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'channel');
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterFilterCondition>
      channelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'channel', 0, true, 0, true);
    });
  }
}

extension ChannelSubscriptionQuerySortBy
    on QueryBuilder<ChannelSubscription, ChannelSubscription, QSortBy> {
  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByShareRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shareRecord', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByShareRecordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shareRecord', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      sortByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension ChannelSubscriptionQuerySortThenBy
    on QueryBuilder<ChannelSubscription, ChannelSubscription, QSortThenBy> {
  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByShareRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shareRecord', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByShareRecordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shareRecord', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QAfterSortBy>
      thenByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension ChannelSubscriptionQueryWhereDistinct
    on QueryBuilder<ChannelSubscription, ChannelSubscription, QDistinct> {
  QueryBuilder<ChannelSubscription, ChannelSubscription, QDistinct>
      distinctByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteAt');
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QDistinct>
      distinctByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rId');
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QDistinct>
      distinctByShareRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shareRecord');
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QDistinct>
      distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<ChannelSubscription, ChannelSubscription, QDistinct>
      distinctByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateAt');
    });
  }
}

extension ChannelSubscriptionQueryProperty
    on QueryBuilder<ChannelSubscription, ChannelSubscription, QQueryProperty> {
  QueryBuilder<ChannelSubscription, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChannelSubscription, int?, QQueryOperations> deleteAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteAt');
    });
  }

  QueryBuilder<ChannelSubscription, int?, QQueryOperations> rIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rId');
    });
  }

  QueryBuilder<ChannelSubscription, bool, QQueryOperations>
      shareRecordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shareRecord');
    });
  }

  QueryBuilder<ChannelSubscription, SubscriptionType, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<ChannelSubscription, int, QQueryOperations> updateAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateAt');
    });
  }
}
