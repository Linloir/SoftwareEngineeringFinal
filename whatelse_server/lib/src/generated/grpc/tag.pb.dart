///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'profile.pb.dart' as $1;

class TagInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TagInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tag'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..aOM<$1.ProfileInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', subBuilder: $1.ProfileInfo.create)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  TagInfo._() : super();
  factory TagInfo({
    $core.String? name,
    $core.String? color,
    $core.String? icon,
    $1.ProfileInfo? owner,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (color != null) {
      _result.color = color;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory TagInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagInfo clone() => TagInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagInfo copyWith(void Function(TagInfo) updates) => super.copyWith((message) => updates(message as TagInfo)) as TagInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagInfo create() => TagInfo._();
  TagInfo createEmptyInstance() => create();
  static $pb.PbList<TagInfo> createRepeated() => $pb.PbList<TagInfo>();
  @$core.pragma('dart2js:noInline')
  static TagInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagInfo>(create);
  static TagInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get color => $_getSZ(1);
  @$pb.TagNumber(2)
  set color($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);

  @$pb.TagNumber(4)
  $1.ProfileInfo get owner => $_getN(3);
  @$pb.TagNumber(4)
  set owner($1.ProfileInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwner() => clearField(4);
  @$pb.TagNumber(4)
  $1.ProfileInfo ensureOwner() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get updateAt => $_getI64(4);
  @$pb.TagNumber(5)
  set updateAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdateAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdateAt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get deleteAt => $_getI64(5);
  @$pb.TagNumber(6)
  set deleteAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeleteAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeleteAt() => clearField(6);
}

class TagList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TagList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tag'), createEmptyInstance: create)
    ..pc<TagInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: TagInfo.create)
    ..hasRequiredFields = false
  ;

  TagList._() : super();
  factory TagList({
    $core.Iterable<TagInfo>? tags,
  }) {
    final _result = create();
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory TagList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagList clone() => TagList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagList copyWith(void Function(TagList) updates) => super.copyWith((message) => updates(message as TagList)) as TagList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagList create() => TagList._();
  TagList createEmptyInstance() => create();
  static $pb.PbList<TagList> createRepeated() => $pb.PbList<TagList>();
  @$core.pragma('dart2js:noInline')
  static TagList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagList>(create);
  static TagList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TagInfo> get tags => $_getList(0);
}

