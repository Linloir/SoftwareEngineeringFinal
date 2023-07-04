// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskCollection on Isar {
  IsarCollection<Task> get tasks => this.collection();
}

const TaskSchema = CollectionSchema(
  name: r'Task',
  id: 2998003626758701373,
  properties: {
    r'content': PropertySchema(
      id: 0,
      name: r'content',
      type: IsarType.string,
    ),
    r'deleteAt': PropertySchema(
      id: 1,
      name: r'deleteAt',
      type: IsarType.long,
    ),
    r'desc': PropertySchema(
      id: 2,
      name: r'desc',
      type: IsarType.string,
    ),
    r'inherited': PropertySchema(
      id: 3,
      name: r'inherited',
      type: IsarType.bool,
    ),
    r'location': PropertySchema(
      id: 4,
      name: r'location',
      type: IsarType.string,
    ),
    r'periodic': PropertySchema(
      id: 5,
      name: r'periodic',
      type: IsarType.bool,
    ),
    r'rId': PropertySchema(
      id: 6,
      name: r'rId',
      type: IsarType.long,
    ),
    r'specAtt': PropertySchema(
      id: 7,
      name: r'specAtt',
      type: IsarType.bool,
    ),
    r'specLoc': PropertySchema(
      id: 8,
      name: r'specLoc',
      type: IsarType.bool,
    ),
    r'specTime': PropertySchema(
      id: 9,
      name: r'specTime',
      type: IsarType.bool,
    ),
    r'title': PropertySchema(
      id: 10,
      name: r'title',
      type: IsarType.string,
    ),
    r'updateAt': PropertySchema(
      id: 11,
      name: r'updateAt',
      type: IsarType.long,
    )
  },
  estimateSize: _taskEstimateSize,
  serialize: _taskSerialize,
  deserialize: _taskDeserialize,
  deserializeProp: _taskDeserializeProp,
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
      id: 7893037553577819596,
      name: r'profile',
      target: r'Profile',
      single: true,
    ),
    r'parent': LinkSchema(
      id: -6882234560539109296,
      name: r'parent',
      target: r'Task',
      single: true,
    ),
    r'children': LinkSchema(
      id: -3251808921230915766,
      name: r'children',
      target: r'Task',
      single: false,
      linkName: r'parent',
    ),
    r'assets': LinkSchema(
      id: 32831494672182753,
      name: r'assets',
      target: r'TaskAsset',
      single: false,
      linkName: r'task',
    ),
    r'channels': LinkSchema(
      id: 1883328803442582496,
      name: r'channels',
      target: r'Channel',
      single: true,
    ),
    r'sessions': LinkSchema(
      id: 7184268196597546476,
      name: r'sessions',
      target: r'Session',
      single: false,
      linkName: r'task',
    ),
    r'assignments': LinkSchema(
      id: 2082519452540005701,
      name: r'assignments',
      target: r'TaskAssignment',
      single: false,
      linkName: r'task',
    )
  },
  embeddedSchemas: {},
  getId: _taskGetId,
  getLinks: _taskGetLinks,
  attach: _taskAttach,
  version: '3.1.0',
);

int _taskEstimateSize(
  Task object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.desc.length * 3;
  {
    final value = object.location;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _taskSerialize(
  Task object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.content);
  writer.writeLong(offsets[1], object.deleteAt);
  writer.writeString(offsets[2], object.desc);
  writer.writeBool(offsets[3], object.inherited);
  writer.writeString(offsets[4], object.location);
  writer.writeBool(offsets[5], object.periodic);
  writer.writeLong(offsets[6], object.rId);
  writer.writeBool(offsets[7], object.specAtt);
  writer.writeBool(offsets[8], object.specLoc);
  writer.writeBool(offsets[9], object.specTime);
  writer.writeString(offsets[10], object.title);
  writer.writeLong(offsets[11], object.updateAt);
}

Task _taskDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Task();
  object.content = reader.readString(offsets[0]);
  object.deleteAt = reader.readLongOrNull(offsets[1]);
  object.desc = reader.readString(offsets[2]);
  object.id = id;
  object.inherited = reader.readBool(offsets[3]);
  object.location = reader.readStringOrNull(offsets[4]);
  object.periodic = reader.readBool(offsets[5]);
  object.rId = reader.readLongOrNull(offsets[6]);
  object.specAtt = reader.readBool(offsets[7]);
  object.specLoc = reader.readBool(offsets[8]);
  object.specTime = reader.readBool(offsets[9]);
  object.title = reader.readString(offsets[10]);
  object.updateAt = reader.readLong(offsets[11]);
  return object;
}

P _taskDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taskGetId(Task object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _taskGetLinks(Task object) {
  return [
    object.profile,
    object.parent,
    object.children,
    object.assets,
    object.channels,
    object.sessions,
    object.assignments
  ];
}

void _taskAttach(IsarCollection<dynamic> col, Id id, Task object) {
  object.id = id;
  object.profile.attach(col, col.isar.collection<Profile>(), r'profile', id);
  object.parent.attach(col, col.isar.collection<Task>(), r'parent', id);
  object.children.attach(col, col.isar.collection<Task>(), r'children', id);
  object.assets.attach(col, col.isar.collection<TaskAsset>(), r'assets', id);
  object.channels.attach(col, col.isar.collection<Channel>(), r'channels', id);
  object.sessions.attach(col, col.isar.collection<Session>(), r'sessions', id);
  object.assignments
      .attach(col, col.isar.collection<TaskAssignment>(), r'assignments', id);
}

extension TaskQueryWhereSort on QueryBuilder<Task, Task, QWhere> {
  QueryBuilder<Task, Task, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Task, Task, QAfterWhere> anyRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'rId'),
      );
    });
  }
}

extension TaskQueryWhere on QueryBuilder<Task, Task, QWhereClause> {
  QueryBuilder<Task, Task, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Task, Task, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> idBetween(
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

  QueryBuilder<Task, Task, QAfterWhereClause> rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [null],
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> rIdEqualTo(int? rId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [rId],
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> rIdNotEqualTo(int? rId) {
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

  QueryBuilder<Task, Task, QAfterWhereClause> rIdGreaterThan(
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

  QueryBuilder<Task, Task, QAfterWhereClause> rIdLessThan(
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

  QueryBuilder<Task, Task, QAfterWhereClause> rIdBetween(
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

extension TaskQueryFilter on QueryBuilder<Task, Task, QFilterCondition> {
  QueryBuilder<Task, Task, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> deleteAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> deleteAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> deleteAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> deleteAtGreaterThan(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> deleteAtLessThan(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> deleteAtBetween(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> descEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'desc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'desc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> descIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> inheritedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inherited',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> periodicEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'periodic',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> rIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rId',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> rIdGreaterThan(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> rIdLessThan(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> rIdBetween(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> specAttEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specAtt',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> specLocEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specLoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> specTimeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> updateAtEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> updateAtGreaterThan(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> updateAtLessThan(
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

  QueryBuilder<Task, Task, QAfterFilterCondition> updateAtBetween(
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

extension TaskQueryObject on QueryBuilder<Task, Task, QFilterCondition> {}

extension TaskQueryLinks on QueryBuilder<Task, Task, QFilterCondition> {
  QueryBuilder<Task, Task, QAfterFilterCondition> profile(
      FilterQuery<Profile> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'profile');
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> profileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'profile', 0, true, 0, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> parent(FilterQuery<Task> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'parent');
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> parentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'parent', 0, true, 0, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> children(
      FilterQuery<Task> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'children');
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> childrenLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'children', length, true, length, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> childrenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'children', 0, true, 0, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> childrenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'children', 0, false, 999999, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> childrenLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'children', 0, true, length, include);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> childrenLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'children', length, include, 999999, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> childrenLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'children', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assets(
      FilterQuery<TaskAsset> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'assets');
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assetsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assets', length, true, length, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assetsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assets', 0, true, 0, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assetsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assets', 0, false, 999999, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assetsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assets', 0, true, length, include);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assetsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assets', length, include, 999999, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assetsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'assets', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> channels(
      FilterQuery<Channel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'channels');
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> channelsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'channels', 0, true, 0, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> sessions(
      FilterQuery<Session> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'sessions');
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> sessionsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sessions', length, true, length, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> sessionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sessions', 0, true, 0, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> sessionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sessions', 0, false, 999999, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> sessionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sessions', 0, true, length, include);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> sessionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sessions', length, include, 999999, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> sessionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'sessions', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assignments(
      FilterQuery<TaskAssignment> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'assignments');
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assignmentsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assignments', length, true, length, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assignmentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assignments', 0, true, 0, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assignmentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assignments', 0, false, 999999, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assignmentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assignments', 0, true, length, include);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assignmentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'assignments', length, include, 999999, true);
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> assignmentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'assignments', lower, includeLower, upper, includeUpper);
    });
  }
}

extension TaskQuerySortBy on QueryBuilder<Task, Task, QSortBy> {
  QueryBuilder<Task, Task, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByInherited() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inherited', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByInheritedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inherited', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByPeriodic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'periodic', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByPeriodicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'periodic', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortBySpecAtt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specAtt', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortBySpecAttDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specAtt', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortBySpecLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specLoc', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortBySpecLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specLoc', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortBySpecTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specTime', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortBySpecTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specTime', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension TaskQuerySortThenBy on QueryBuilder<Task, Task, QSortThenBy> {
  QueryBuilder<Task, Task, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByInherited() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inherited', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByInheritedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inherited', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByPeriodic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'periodic', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByPeriodicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'periodic', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenBySpecAtt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specAtt', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenBySpecAttDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specAtt', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenBySpecLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specLoc', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenBySpecLocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specLoc', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenBySpecTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specTime', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenBySpecTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specTime', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension TaskQueryWhereDistinct on QueryBuilder<Task, Task, QDistinct> {
  QueryBuilder<Task, Task, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteAt');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'desc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByInherited() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inherited');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByPeriodic() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'periodic');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rId');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctBySpecAtt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specAtt');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctBySpecLoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specLoc');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctBySpecTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specTime');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateAt');
    });
  }
}

extension TaskQueryProperty on QueryBuilder<Task, Task, QQueryProperty> {
  QueryBuilder<Task, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Task, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<Task, int?, QQueryOperations> deleteAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteAt');
    });
  }

  QueryBuilder<Task, String, QQueryOperations> descProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'desc');
    });
  }

  QueryBuilder<Task, bool, QQueryOperations> inheritedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inherited');
    });
  }

  QueryBuilder<Task, String?, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<Task, bool, QQueryOperations> periodicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'periodic');
    });
  }

  QueryBuilder<Task, int?, QQueryOperations> rIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rId');
    });
  }

  QueryBuilder<Task, bool, QQueryOperations> specAttProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specAtt');
    });
  }

  QueryBuilder<Task, bool, QQueryOperations> specLocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specLoc');
    });
  }

  QueryBuilder<Task, bool, QQueryOperations> specTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specTime');
    });
  }

  QueryBuilder<Task, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<Task, int, QQueryOperations> updateAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateAt');
    });
  }
}
