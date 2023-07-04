///
//  Generated code. Do not modify.
//  source: record.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'task.pb.dart' as $4;
import 'session.pb.dart' as $5;
import 'profile.pb.dart' as $1;

class RecordInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'record'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<$4.TaskInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'task', subBuilder: $4.TaskInfo.create)
    ..aOM<$5.SessionInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'session', subBuilder: $5.SessionInfo.create)
    ..aOM<$1.ProfileInfo>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $1.ProfileInfo.create)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RecordInfo._() : super();
  factory RecordInfo({
    $fixnum.Int64? time,
    $core.int? index,
    $4.TaskInfo? task,
    $5.SessionInfo? session,
    $1.ProfileInfo? profile,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (time != null) {
      _result.time = time;
    }
    if (index != null) {
      _result.index = index;
    }
    if (task != null) {
      _result.task = task;
    }
    if (session != null) {
      _result.session = session;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RecordInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordInfo clone() => RecordInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordInfo copyWith(void Function(RecordInfo) updates) => super.copyWith((message) => updates(message as RecordInfo)) as RecordInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecordInfo create() => RecordInfo._();
  RecordInfo createEmptyInstance() => create();
  static $pb.PbList<RecordInfo> createRepeated() => $pb.PbList<RecordInfo>();
  @$core.pragma('dart2js:noInline')
  static RecordInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordInfo>(create);
  static RecordInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get time => $_getI64(0);
  @$pb.TagNumber(1)
  set time($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);

  @$pb.TagNumber(3)
  $4.TaskInfo get task => $_getN(2);
  @$pb.TagNumber(3)
  set task($4.TaskInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTask() => $_has(2);
  @$pb.TagNumber(3)
  void clearTask() => clearField(3);
  @$pb.TagNumber(3)
  $4.TaskInfo ensureTask() => $_ensure(2);

  @$pb.TagNumber(4)
  $5.SessionInfo get session => $_getN(3);
  @$pb.TagNumber(4)
  set session($5.SessionInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSession() => $_has(3);
  @$pb.TagNumber(4)
  void clearSession() => clearField(4);
  @$pb.TagNumber(4)
  $5.SessionInfo ensureSession() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.ProfileInfo get profile => $_getN(4);
  @$pb.TagNumber(5)
  set profile($1.ProfileInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasProfile() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfile() => clearField(5);
  @$pb.TagNumber(5)
  $1.ProfileInfo ensureProfile() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updateAt => $_getI64(5);
  @$pb.TagNumber(6)
  set updateAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get deleteAt => $_getI64(6);
  @$pb.TagNumber(7)
  set deleteAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeleteAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeleteAt() => clearField(7);
}

class RecordList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'record'), createEmptyInstance: create)
    ..pc<RecordInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', $pb.PbFieldType.PM, subBuilder: RecordInfo.create)
    ..hasRequiredFields = false
  ;

  RecordList._() : super();
  factory RecordList({
    $core.Iterable<RecordInfo>? records,
  }) {
    final _result = create();
    if (records != null) {
      _result.records.addAll(records);
    }
    return _result;
  }
  factory RecordList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordList clone() => RecordList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordList copyWith(void Function(RecordList) updates) => super.copyWith((message) => updates(message as RecordList)) as RecordList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecordList create() => RecordList._();
  RecordList createEmptyInstance() => create();
  static $pb.PbList<RecordList> createRepeated() => $pb.PbList<RecordList>();
  @$core.pragma('dart2js:noInline')
  static RecordList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordList>(create);
  static RecordList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RecordInfo> get records => $_getList(0);
}

