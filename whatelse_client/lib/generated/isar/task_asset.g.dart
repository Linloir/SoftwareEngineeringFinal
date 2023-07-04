// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_asset.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskAssetCollection on Isar {
  IsarCollection<TaskAsset> get taskAssets => this.collection();
}

const TaskAssetSchema = CollectionSchema(
  name: r'TaskAsset',
  id: 8922281389152549324,
  properties: {
    r'cat': PropertySchema(
      id: 0,
      name: r'cat',
      type: IsarType.byte,
      enumMap: _TaskAssetcatEnumValueMap,
    ),
    r'deleteAt': PropertySchema(
      id: 1,
      name: r'deleteAt',
      type: IsarType.long,
    ),
    r'fileId': PropertySchema(
      id: 2,
      name: r'fileId',
      type: IsarType.string,
    ),
    r'rId': PropertySchema(
      id: 3,
      name: r'rId',
      type: IsarType.long,
    ),
    r'ref': PropertySchema(
      id: 4,
      name: r'ref',
      type: IsarType.string,
    ),
    r'updateAt': PropertySchema(
      id: 5,
      name: r'updateAt',
      type: IsarType.long,
    )
  },
  estimateSize: _taskAssetEstimateSize,
  serialize: _taskAssetSerialize,
  deserialize: _taskAssetDeserialize,
  deserializeProp: _taskAssetDeserializeProp,
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
      id: -5684377029556650849,
      name: r'task',
      target: r'Task',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _taskAssetGetId,
  getLinks: _taskAssetGetLinks,
  attach: _taskAssetAttach,
  version: '3.1.0',
);

int _taskAssetEstimateSize(
  TaskAsset object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.fileId.length * 3;
  bytesCount += 3 + object.ref.length * 3;
  return bytesCount;
}

void _taskAssetSerialize(
  TaskAsset object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.cat.index);
  writer.writeLong(offsets[1], object.deleteAt);
  writer.writeString(offsets[2], object.fileId);
  writer.writeLong(offsets[3], object.rId);
  writer.writeString(offsets[4], object.ref);
  writer.writeLong(offsets[5], object.updateAt);
}

TaskAsset _taskAssetDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskAsset();
  object.cat = _TaskAssetcatValueEnumMap[reader.readByteOrNull(offsets[0])] ??
      FileCat.avatar;
  object.deleteAt = reader.readLongOrNull(offsets[1]);
  object.fileId = reader.readString(offsets[2]);
  object.id = id;
  object.rId = reader.readLongOrNull(offsets[3]);
  object.ref = reader.readString(offsets[4]);
  object.updateAt = reader.readLong(offsets[5]);
  return object;
}

P _taskAssetDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_TaskAssetcatValueEnumMap[reader.readByteOrNull(offset)] ??
          FileCat.avatar) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TaskAssetcatEnumValueMap = {
  'avatar': 0,
  'image': 1,
  'document': 2,
  'recording': 3,
};
const _TaskAssetcatValueEnumMap = {
  0: FileCat.avatar,
  1: FileCat.image,
  2: FileCat.document,
  3: FileCat.recording,
};

Id _taskAssetGetId(TaskAsset object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _taskAssetGetLinks(TaskAsset object) {
  return [object.task];
}

void _taskAssetAttach(IsarCollection<dynamic> col, Id id, TaskAsset object) {
  object.id = id;
  object.task.attach(col, col.isar.collection<Task>(), r'task', id);
}

extension TaskAssetQueryWhereSort
    on QueryBuilder<TaskAsset, TaskAsset, QWhere> {
  QueryBuilder<TaskAsset, TaskAsset, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhere> anyRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'rId'),
      );
    });
  }
}

extension TaskAssetQueryWhere
    on QueryBuilder<TaskAsset, TaskAsset, QWhereClause> {
  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> idBetween(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [null],
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> rIdEqualTo(int? rId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [rId],
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> rIdNotEqualTo(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> rIdGreaterThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> rIdLessThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterWhereClause> rIdBetween(
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

extension TaskAssetQueryFilter
    on QueryBuilder<TaskAsset, TaskAsset, QFilterCondition> {
  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> catEqualTo(
      FileCat value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cat',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> catGreaterThan(
    FileCat value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cat',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> catLessThan(
    FileCat value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cat',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> catBetween(
    FileCat lower,
    FileCat upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> deleteAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition>
      deleteAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> deleteAtEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> deleteAtGreaterThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> deleteAtLessThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> deleteAtBetween(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fileId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> fileIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileId',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> rIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> rIdGreaterThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> rIdLessThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> rIdBetween(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ref',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ref',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ref',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> refIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ref',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> updateAtEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> updateAtGreaterThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> updateAtLessThan(
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

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> updateAtBetween(
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

extension TaskAssetQueryObject
    on QueryBuilder<TaskAsset, TaskAsset, QFilterCondition> {}

extension TaskAssetQueryLinks
    on QueryBuilder<TaskAsset, TaskAsset, QFilterCondition> {
  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> task(
      FilterQuery<Task> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'task');
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterFilterCondition> taskIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'task', 0, true, 0, true);
    });
  }
}

extension TaskAssetQuerySortBy on QueryBuilder<TaskAsset, TaskAsset, QSortBy> {
  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByCat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cat', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByCatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cat', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByFileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileId', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByFileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileId', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByRef() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ref', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByRefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ref', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> sortByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension TaskAssetQuerySortThenBy
    on QueryBuilder<TaskAsset, TaskAsset, QSortThenBy> {
  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByCat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cat', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByCatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cat', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByFileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileId', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByFileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileId', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByRef() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ref', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByRefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ref', Sort.desc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QAfterSortBy> thenByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension TaskAssetQueryWhereDistinct
    on QueryBuilder<TaskAsset, TaskAsset, QDistinct> {
  QueryBuilder<TaskAsset, TaskAsset, QDistinct> distinctByCat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cat');
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QDistinct> distinctByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteAt');
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QDistinct> distinctByFileId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QDistinct> distinctByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rId');
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QDistinct> distinctByRef(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ref', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAsset, TaskAsset, QDistinct> distinctByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateAt');
    });
  }
}

extension TaskAssetQueryProperty
    on QueryBuilder<TaskAsset, TaskAsset, QQueryProperty> {
  QueryBuilder<TaskAsset, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaskAsset, FileCat, QQueryOperations> catProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cat');
    });
  }

  QueryBuilder<TaskAsset, int?, QQueryOperations> deleteAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteAt');
    });
  }

  QueryBuilder<TaskAsset, String, QQueryOperations> fileIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileId');
    });
  }

  QueryBuilder<TaskAsset, int?, QQueryOperations> rIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rId');
    });
  }

  QueryBuilder<TaskAsset, String, QQueryOperations> refProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ref');
    });
  }

  QueryBuilder<TaskAsset, int, QQueryOperations> updateAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateAt');
    });
  }
}
