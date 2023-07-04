// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_assignment.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskAssignmentCollection on Isar {
  IsarCollection<TaskAssignment> get taskAssignments => this.collection();
}

const TaskAssignmentSchema = CollectionSchema(
  name: r'TaskAssignment',
  id: -6686068582307569543,
  properties: {
    r'archived': PropertySchema(
      id: 0,
      name: r'archived',
      type: IsarType.bool,
    ),
    r'deleteAt': PropertySchema(
      id: 1,
      name: r'deleteAt',
      type: IsarType.long,
    ),
    r'postAction': PropertySchema(
      id: 2,
      name: r'postAction',
      type: IsarType.string,
    ),
    r'priority': PropertySchema(
      id: 3,
      name: r'priority',
      type: IsarType.byte,
      enumMap: _TaskAssignmentpriorityEnumValueMap,
    ),
    r'rId': PropertySchema(
      id: 4,
      name: r'rId',
      type: IsarType.long,
    ),
    r'shareRecord': PropertySchema(
      id: 5,
      name: r'shareRecord',
      type: IsarType.bool,
    ),
    r'starred': PropertySchema(
      id: 6,
      name: r'starred',
      type: IsarType.bool,
    ),
    r'status': PropertySchema(
      id: 7,
      name: r'status',
      type: IsarType.byte,
      enumMap: _TaskAssignmentstatusEnumValueMap,
    ),
    r'updateAt': PropertySchema(
      id: 8,
      name: r'updateAt',
      type: IsarType.long,
    )
  },
  estimateSize: _taskAssignmentEstimateSize,
  serialize: _taskAssignmentSerialize,
  deserialize: _taskAssignmentDeserialize,
  deserializeProp: _taskAssignmentDeserializeProp,
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
    r'task': LinkSchema(
      id: -997561476692728337,
      name: r'task',
      target: r'Task',
      single: true,
    ),
    r'profile': LinkSchema(
      id: 4384205974277536070,
      name: r'profile',
      target: r'Profile',
      single: true,
    ),
    r'upstreamChannels': LinkSchema(
      id: 404945358119746559,
      name: r'upstreamChannels',
      target: r'Channel',
      single: false,
    ),
    r'category': LinkSchema(
      id: -1557737026229605227,
      name: r'category',
      target: r'Category',
      single: true,
    ),
    r'tags': LinkSchema(
      id: -6198522408680987601,
      name: r'tags',
      target: r'Tag',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _taskAssignmentGetId,
  getLinks: _taskAssignmentGetLinks,
  attach: _taskAssignmentAttach,
  version: '3.1.0',
);

int _taskAssignmentEstimateSize(
  TaskAssignment object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.postAction;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _taskAssignmentSerialize(
  TaskAssignment object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.archived);
  writer.writeLong(offsets[1], object.deleteAt);
  writer.writeString(offsets[2], object.postAction);
  writer.writeByte(offsets[3], object.priority.index);
  writer.writeLong(offsets[4], object.rId);
  writer.writeBool(offsets[5], object.shareRecord);
  writer.writeBool(offsets[6], object.starred);
  writer.writeByte(offsets[7], object.status.index);
  writer.writeLong(offsets[8], object.updateAt);
}

TaskAssignment _taskAssignmentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskAssignment();
  object.archived = reader.readBool(offsets[0]);
  object.deleteAt = reader.readLongOrNull(offsets[1]);
  object.id = id;
  object.postAction = reader.readStringOrNull(offsets[2]);
  object.priority =
      _TaskAssignmentpriorityValueEnumMap[reader.readByteOrNull(offsets[3])] ??
          TaskPriority.none;
  object.rId = reader.readLongOrNull(offsets[4]);
  object.shareRecord = reader.readBool(offsets[5]);
  object.starred = reader.readBool(offsets[6]);
  object.status =
      _TaskAssignmentstatusValueEnumMap[reader.readByteOrNull(offsets[7])] ??
          TaskAssignmentStatus.accepted;
  object.updateAt = reader.readLong(offsets[8]);
  return object;
}

P _taskAssignmentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (_TaskAssignmentpriorityValueEnumMap[
              reader.readByteOrNull(offset)] ??
          TaskPriority.none) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (_TaskAssignmentstatusValueEnumMap[
              reader.readByteOrNull(offset)] ??
          TaskAssignmentStatus.accepted) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TaskAssignmentpriorityEnumValueMap = {
  'none': 0,
  'low': 1,
  'medium': 2,
  'high': 3,
  'urgent': 4,
};
const _TaskAssignmentpriorityValueEnumMap = {
  0: TaskPriority.none,
  1: TaskPriority.low,
  2: TaskPriority.medium,
  3: TaskPriority.high,
  4: TaskPriority.urgent,
};
const _TaskAssignmentstatusEnumValueMap = {
  'accepted': 0,
  'rejected': 1,
};
const _TaskAssignmentstatusValueEnumMap = {
  0: TaskAssignmentStatus.accepted,
  1: TaskAssignmentStatus.rejected,
};

Id _taskAssignmentGetId(TaskAssignment object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _taskAssignmentGetLinks(TaskAssignment object) {
  return [
    object.task,
    object.profile,
    object.upstreamChannels,
    object.category,
    object.tags
  ];
}

void _taskAssignmentAttach(
    IsarCollection<dynamic> col, Id id, TaskAssignment object) {
  object.id = id;
  object.task.attach(col, col.isar.collection<Task>(), r'task', id);
  object.profile.attach(col, col.isar.collection<Profile>(), r'profile', id);
  object.upstreamChannels
      .attach(col, col.isar.collection<Channel>(), r'upstreamChannels', id);
  object.category.attach(col, col.isar.collection<Category>(), r'category', id);
  object.tags.attach(col, col.isar.collection<Tag>(), r'tags', id);
}

extension TaskAssignmentQueryWhereSort
    on QueryBuilder<TaskAssignment, TaskAssignment, QWhere> {
  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhere> anyRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'rId'),
      );
    });
  }
}

extension TaskAssignmentQueryWhere
    on QueryBuilder<TaskAssignment, TaskAssignment, QWhereClause> {
  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> idBetween(
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [null],
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> rIdEqualTo(
      int? rId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [rId],
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> rIdNotEqualTo(
      int? rId) {
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> rIdLessThan(
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterWhereClause> rIdBetween(
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

extension TaskAssignmentQueryFilter
    on QueryBuilder<TaskAssignment, TaskAssignment, QFilterCondition> {
  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      archivedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'archived',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      deleteAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      deleteAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      deleteAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'postAction',
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'postAction',
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postAction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'postAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'postAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'postAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'postAction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postAction',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      postActionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'postAction',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      priorityEqualTo(TaskPriority value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priority',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      priorityGreaterThan(
    TaskPriority value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priority',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      priorityLessThan(
    TaskPriority value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priority',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      priorityBetween(
    TaskPriority lower,
    TaskPriority upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priority',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      rIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      shareRecordEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shareRecord',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      starredEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'starred',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      statusEqualTo(TaskAssignmentStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      statusGreaterThan(
    TaskAssignmentStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      statusLessThan(
    TaskAssignmentStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      statusBetween(
    TaskAssignmentStatus lower,
    TaskAssignmentStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      updateAtEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
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

extension TaskAssignmentQueryObject
    on QueryBuilder<TaskAssignment, TaskAssignment, QFilterCondition> {}

extension TaskAssignmentQueryLinks
    on QueryBuilder<TaskAssignment, TaskAssignment, QFilterCondition> {
  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition> task(
      FilterQuery<Task> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'task');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      taskIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'task', 0, true, 0, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition> profile(
      FilterQuery<Profile> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'profile');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      profileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'profile', 0, true, 0, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      upstreamChannels(FilterQuery<Channel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'upstreamChannels');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      upstreamChannelsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'upstreamChannels', length, true, length, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      upstreamChannelsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'upstreamChannels', 0, true, 0, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      upstreamChannelsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'upstreamChannels', 0, false, 999999, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      upstreamChannelsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'upstreamChannels', 0, true, length, include);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      upstreamChannelsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'upstreamChannels', length, include, 999999, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      upstreamChannelsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'upstreamChannels', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition> category(
      FilterQuery<Category> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'category');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'category', 0, true, 0, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition> tags(
      FilterQuery<Tag> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tags');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      tagsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, true, length, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, 0, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, false, 999999, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, length, include);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, include, 999999, true);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterFilterCondition>
      tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tags', lower, includeLower, upper, includeUpper);
    });
  }
}

extension TaskAssignmentQuerySortBy
    on QueryBuilder<TaskAssignment, TaskAssignment, QSortBy> {
  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> sortByArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'archived', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByArchivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'archived', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> sortByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByPostAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postAction', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByPostActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postAction', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> sortByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> sortByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> sortByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByShareRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shareRecord', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByShareRecordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shareRecord', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> sortByStarred() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'starred', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByStarredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'starred', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> sortByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      sortByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension TaskAssignmentQuerySortThenBy
    on QueryBuilder<TaskAssignment, TaskAssignment, QSortThenBy> {
  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'archived', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByArchivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'archived', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByPostAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postAction', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByPostActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postAction', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByShareRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shareRecord', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByShareRecordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shareRecord', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByStarred() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'starred', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByStarredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'starred', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy> thenByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QAfterSortBy>
      thenByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension TaskAssignmentQueryWhereDistinct
    on QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> {
  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> distinctByArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'archived');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> distinctByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteAt');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> distinctByPostAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postAction', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> distinctByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priority');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> distinctByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rId');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct>
      distinctByShareRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shareRecord');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> distinctByStarred() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'starred');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignment, QDistinct> distinctByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateAt');
    });
  }
}

extension TaskAssignmentQueryProperty
    on QueryBuilder<TaskAssignment, TaskAssignment, QQueryProperty> {
  QueryBuilder<TaskAssignment, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaskAssignment, bool, QQueryOperations> archivedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'archived');
    });
  }

  QueryBuilder<TaskAssignment, int?, QQueryOperations> deleteAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteAt');
    });
  }

  QueryBuilder<TaskAssignment, String?, QQueryOperations> postActionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postAction');
    });
  }

  QueryBuilder<TaskAssignment, TaskPriority, QQueryOperations>
      priorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priority');
    });
  }

  QueryBuilder<TaskAssignment, int?, QQueryOperations> rIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rId');
    });
  }

  QueryBuilder<TaskAssignment, bool, QQueryOperations> shareRecordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shareRecord');
    });
  }

  QueryBuilder<TaskAssignment, bool, QQueryOperations> starredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'starred');
    });
  }

  QueryBuilder<TaskAssignment, TaskAssignmentStatus, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<TaskAssignment, int, QQueryOperations> updateAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateAt');
    });
  }
}
