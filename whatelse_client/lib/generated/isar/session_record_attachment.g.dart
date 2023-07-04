// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_record_attachment.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSessionRecordAttachmentCollection on Isar {
  IsarCollection<SessionRecordAttachment> get sessionRecordAttachments =>
      this.collection();
}

const SessionRecordAttachmentSchema = CollectionSchema(
  name: r'SessionRecordAttachment',
  id: 8162784463936080293,
  properties: {
    r'assetRef': PropertySchema(
      id: 0,
      name: r'assetRef',
      type: IsarType.string,
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
    r'fileName': PropertySchema(
      id: 3,
      name: r'fileName',
      type: IsarType.string,
    ),
    r'rId': PropertySchema(
      id: 4,
      name: r'rId',
      type: IsarType.long,
    ),
    r'updateAt': PropertySchema(
      id: 5,
      name: r'updateAt',
      type: IsarType.long,
    )
  },
  estimateSize: _sessionRecordAttachmentEstimateSize,
  serialize: _sessionRecordAttachmentSerialize,
  deserialize: _sessionRecordAttachmentDeserialize,
  deserializeProp: _sessionRecordAttachmentDeserializeProp,
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
    r'sessionRecord': LinkSchema(
      id: -1481640525008421921,
      name: r'sessionRecord',
      target: r'SessionRecord',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _sessionRecordAttachmentGetId,
  getLinks: _sessionRecordAttachmentGetLinks,
  attach: _sessionRecordAttachmentAttach,
  version: '3.1.0',
);

int _sessionRecordAttachmentEstimateSize(
  SessionRecordAttachment object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.assetRef.length * 3;
  bytesCount += 3 + object.fileId.length * 3;
  bytesCount += 3 + object.fileName.length * 3;
  return bytesCount;
}

void _sessionRecordAttachmentSerialize(
  SessionRecordAttachment object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.assetRef);
  writer.writeLong(offsets[1], object.deleteAt);
  writer.writeString(offsets[2], object.fileId);
  writer.writeString(offsets[3], object.fileName);
  writer.writeLong(offsets[4], object.rId);
  writer.writeLong(offsets[5], object.updateAt);
}

SessionRecordAttachment _sessionRecordAttachmentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SessionRecordAttachment();
  object.assetRef = reader.readString(offsets[0]);
  object.deleteAt = reader.readLongOrNull(offsets[1]);
  object.fileId = reader.readString(offsets[2]);
  object.fileName = reader.readString(offsets[3]);
  object.id = id;
  object.rId = reader.readLongOrNull(offsets[4]);
  object.updateAt = reader.readLong(offsets[5]);
  return object;
}

P _sessionRecordAttachmentDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sessionRecordAttachmentGetId(SessionRecordAttachment object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sessionRecordAttachmentGetLinks(
    SessionRecordAttachment object) {
  return [object.sessionRecord];
}

void _sessionRecordAttachmentAttach(
    IsarCollection<dynamic> col, Id id, SessionRecordAttachment object) {
  object.id = id;
  object.sessionRecord
      .attach(col, col.isar.collection<SessionRecord>(), r'sessionRecord', id);
}

extension SessionRecordAttachmentQueryWhereSort
    on QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QWhere> {
  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterWhere>
      anyRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'rId'),
      );
    });
  }
}

extension SessionRecordAttachmentQueryWhere on QueryBuilder<
    SessionRecordAttachment, SessionRecordAttachment, QWhereClause> {
  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> idBetween(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [null],
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'rId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> rIdEqualTo(int? rId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'rId',
        value: [rId],
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> rIdNotEqualTo(int? rId) {
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> rIdGreaterThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> rIdLessThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterWhereClause> rIdBetween(
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

extension SessionRecordAttachmentQueryFilter on QueryBuilder<
    SessionRecordAttachment, SessionRecordAttachment, QFilterCondition> {
  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> assetRefEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assetRef',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> assetRefGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assetRef',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> assetRefLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assetRef',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> assetRefBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assetRef',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> assetRefStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assetRef',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> assetRefEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assetRef',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
          QAfterFilterCondition>
      assetRefContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assetRef',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
          QAfterFilterCondition>
      assetRefMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assetRef',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> assetRefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assetRef',
        value: '',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> assetRefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assetRef',
        value: '',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> deleteAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> deleteAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deleteAt',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> deleteAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> deleteAtGreaterThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> deleteAtLessThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> deleteAtBetween(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileIdEqualTo(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileIdGreaterThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileIdLessThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileIdBetween(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileIdStartsWith(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileIdEndsWith(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
          QAfterFilterCondition>
      fileIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
          QAfterFilterCondition>
      fileIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileId',
        value: '',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileId',
        value: '',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fileName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
          QAfterFilterCondition>
      fileNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
          QAfterFilterCondition>
      fileNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileName',
        value: '',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> fileNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileName',
        value: '',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> rIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> rIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rId',
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> rIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rId',
        value: value,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> rIdGreaterThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> rIdLessThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> rIdBetween(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> updateAtEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> updateAtGreaterThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> updateAtLessThan(
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

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> updateAtBetween(
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

extension SessionRecordAttachmentQueryObject on QueryBuilder<
    SessionRecordAttachment, SessionRecordAttachment, QFilterCondition> {}

extension SessionRecordAttachmentQueryLinks on QueryBuilder<
    SessionRecordAttachment, SessionRecordAttachment, QFilterCondition> {
  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> sessionRecord(FilterQuery<SessionRecord> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'sessionRecord');
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment,
      QAfterFilterCondition> sessionRecordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sessionRecord', 0, true, 0, true);
    });
  }
}

extension SessionRecordAttachmentQuerySortBy
    on QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QSortBy> {
  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByAssetRef() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetRef', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByAssetRefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetRef', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByFileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileId', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByFileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileId', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByFileName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByFileNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      sortByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension SessionRecordAttachmentQuerySortThenBy on QueryBuilder<
    SessionRecordAttachment, SessionRecordAttachment, QSortThenBy> {
  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByAssetRef() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetRef', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByAssetRefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assetRef', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByDeleteAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteAt', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByFileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileId', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByFileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileId', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByFileName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByFileNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByRIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rId', Sort.desc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QAfterSortBy>
      thenByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension SessionRecordAttachmentQueryWhereDistinct on QueryBuilder<
    SessionRecordAttachment, SessionRecordAttachment, QDistinct> {
  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QDistinct>
      distinctByAssetRef({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assetRef', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QDistinct>
      distinctByDeleteAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteAt');
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QDistinct>
      distinctByFileId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QDistinct>
      distinctByFileName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QDistinct>
      distinctByRId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rId');
    });
  }

  QueryBuilder<SessionRecordAttachment, SessionRecordAttachment, QDistinct>
      distinctByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateAt');
    });
  }
}

extension SessionRecordAttachmentQueryProperty on QueryBuilder<
    SessionRecordAttachment, SessionRecordAttachment, QQueryProperty> {
  QueryBuilder<SessionRecordAttachment, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SessionRecordAttachment, String, QQueryOperations>
      assetRefProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assetRef');
    });
  }

  QueryBuilder<SessionRecordAttachment, int?, QQueryOperations>
      deleteAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteAt');
    });
  }

  QueryBuilder<SessionRecordAttachment, String, QQueryOperations>
      fileIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileId');
    });
  }

  QueryBuilder<SessionRecordAttachment, String, QQueryOperations>
      fileNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileName');
    });
  }

  QueryBuilder<SessionRecordAttachment, int?, QQueryOperations> rIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rId');
    });
  }

  QueryBuilder<SessionRecordAttachment, int, QQueryOperations>
      updateAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateAt');
    });
  }
}
