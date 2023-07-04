// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCredentialCollection on Isar {
  IsarCollection<Credential> get credentials => this.collection();
}

const CredentialSchema = CollectionSchema(
  name: r'Credential',
  id: 8105671720389824406,
  properties: {
    r'password': PropertySchema(
      id: 0,
      name: r'password',
      type: IsarType.string,
    ),
    r'userClaim': PropertySchema(
      id: 1,
      name: r'userClaim',
      type: IsarType.string,
    )
  },
  estimateSize: _credentialEstimateSize,
  serialize: _credentialSerialize,
  deserialize: _credentialDeserialize,
  deserializeProp: _credentialDeserializeProp,
  idName: r'id',
  indexes: {
    r'userClaim': IndexSchema(
      id: 6600695969311505711,
      name: r'userClaim',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'userClaim',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _credentialGetId,
  getLinks: _credentialGetLinks,
  attach: _credentialAttach,
  version: '3.1.0',
);

int _credentialEstimateSize(
  Credential object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.password.length * 3;
  bytesCount += 3 + object.userClaim.length * 3;
  return bytesCount;
}

void _credentialSerialize(
  Credential object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.password);
  writer.writeString(offsets[1], object.userClaim);
}

Credential _credentialDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Credential();
  object.password = reader.readString(offsets[0]);
  object.userClaim = reader.readString(offsets[1]);
  return object;
}

P _credentialDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _credentialGetId(Credential object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _credentialGetLinks(Credential object) {
  return [];
}

void _credentialAttach(IsarCollection<dynamic> col, Id id, Credential object) {}

extension CredentialByIndex on IsarCollection<Credential> {
  Future<Credential?> getByUserClaim(String userClaim) {
    return getByIndex(r'userClaim', [userClaim]);
  }

  Credential? getByUserClaimSync(String userClaim) {
    return getByIndexSync(r'userClaim', [userClaim]);
  }

  Future<bool> deleteByUserClaim(String userClaim) {
    return deleteByIndex(r'userClaim', [userClaim]);
  }

  bool deleteByUserClaimSync(String userClaim) {
    return deleteByIndexSync(r'userClaim', [userClaim]);
  }

  Future<List<Credential?>> getAllByUserClaim(List<String> userClaimValues) {
    final values = userClaimValues.map((e) => [e]).toList();
    return getAllByIndex(r'userClaim', values);
  }

  List<Credential?> getAllByUserClaimSync(List<String> userClaimValues) {
    final values = userClaimValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'userClaim', values);
  }

  Future<int> deleteAllByUserClaim(List<String> userClaimValues) {
    final values = userClaimValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'userClaim', values);
  }

  int deleteAllByUserClaimSync(List<String> userClaimValues) {
    final values = userClaimValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'userClaim', values);
  }

  Future<Id> putByUserClaim(Credential object) {
    return putByIndex(r'userClaim', object);
  }

  Id putByUserClaimSync(Credential object, {bool saveLinks = true}) {
    return putByIndexSync(r'userClaim', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUserClaim(List<Credential> objects) {
    return putAllByIndex(r'userClaim', objects);
  }

  List<Id> putAllByUserClaimSync(List<Credential> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'userClaim', objects, saveLinks: saveLinks);
  }
}

extension CredentialQueryWhereSort
    on QueryBuilder<Credential, Credential, QWhere> {
  QueryBuilder<Credential, Credential, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CredentialQueryWhere
    on QueryBuilder<Credential, Credential, QWhereClause> {
  QueryBuilder<Credential, Credential, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Credential, Credential, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Credential, Credential, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Credential, Credential, QAfterWhereClause> idBetween(
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

  QueryBuilder<Credential, Credential, QAfterWhereClause> userClaimEqualTo(
      String userClaim) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userClaim',
        value: [userClaim],
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterWhereClause> userClaimNotEqualTo(
      String userClaim) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userClaim',
              lower: [],
              upper: [userClaim],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userClaim',
              lower: [userClaim],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userClaim',
              lower: [userClaim],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userClaim',
              lower: [],
              upper: [userClaim],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CredentialQueryFilter
    on QueryBuilder<Credential, Credential, QFilterCondition> {
  QueryBuilder<Credential, Credential, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Credential, Credential, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Credential, Credential, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Credential, Credential, QAfterFilterCondition> passwordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition>
      passwordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> passwordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> passwordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> passwordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> passwordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition>
      passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition>
      passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> userClaimEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userClaim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition>
      userClaimGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userClaim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> userClaimLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userClaim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> userClaimBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userClaim',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition>
      userClaimStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userClaim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> userClaimEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userClaim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> userClaimContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userClaim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition> userClaimMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userClaim',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition>
      userClaimIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userClaim',
        value: '',
      ));
    });
  }

  QueryBuilder<Credential, Credential, QAfterFilterCondition>
      userClaimIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userClaim',
        value: '',
      ));
    });
  }
}

extension CredentialQueryObject
    on QueryBuilder<Credential, Credential, QFilterCondition> {}

extension CredentialQueryLinks
    on QueryBuilder<Credential, Credential, QFilterCondition> {}

extension CredentialQuerySortBy
    on QueryBuilder<Credential, Credential, QSortBy> {
  QueryBuilder<Credential, Credential, QAfterSortBy> sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<Credential, Credential, QAfterSortBy> sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<Credential, Credential, QAfterSortBy> sortByUserClaim() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userClaim', Sort.asc);
    });
  }

  QueryBuilder<Credential, Credential, QAfterSortBy> sortByUserClaimDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userClaim', Sort.desc);
    });
  }
}

extension CredentialQuerySortThenBy
    on QueryBuilder<Credential, Credential, QSortThenBy> {
  QueryBuilder<Credential, Credential, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Credential, Credential, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Credential, Credential, QAfterSortBy> thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<Credential, Credential, QAfterSortBy> thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<Credential, Credential, QAfterSortBy> thenByUserClaim() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userClaim', Sort.asc);
    });
  }

  QueryBuilder<Credential, Credential, QAfterSortBy> thenByUserClaimDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userClaim', Sort.desc);
    });
  }
}

extension CredentialQueryWhereDistinct
    on QueryBuilder<Credential, Credential, QDistinct> {
  QueryBuilder<Credential, Credential, QDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Credential, Credential, QDistinct> distinctByUserClaim(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userClaim', caseSensitive: caseSensitive);
    });
  }
}

extension CredentialQueryProperty
    on QueryBuilder<Credential, Credential, QQueryProperty> {
  QueryBuilder<Credential, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Credential, String, QQueryOperations> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<Credential, String, QQueryOperations> userClaimProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userClaim');
    });
  }
}
