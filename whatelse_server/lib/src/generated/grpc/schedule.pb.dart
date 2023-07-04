///
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'profile.pb.dart' as $1;
import 'session.pb.dart' as $5;

class ScheduleInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScheduleInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relStart', protoName: 'relStart')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relEnd', protoName: 'relEnd')
    ..aOM<$1.ProfileInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $1.ProfileInfo.create)
    ..aOM<$5.SessionInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'session', subBuilder: $5.SessionInfo.create)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ScheduleInfo._() : super();
  factory ScheduleInfo({
    $fixnum.Int64? relStart,
    $fixnum.Int64? relEnd,
    $1.ProfileInfo? profile,
    $5.SessionInfo? session,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (relStart != null) {
      _result.relStart = relStart;
    }
    if (relEnd != null) {
      _result.relEnd = relEnd;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (session != null) {
      _result.session = session;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ScheduleInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleInfo clone() => ScheduleInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleInfo copyWith(void Function(ScheduleInfo) updates) => super.copyWith((message) => updates(message as ScheduleInfo)) as ScheduleInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScheduleInfo create() => ScheduleInfo._();
  ScheduleInfo createEmptyInstance() => create();
  static $pb.PbList<ScheduleInfo> createRepeated() => $pb.PbList<ScheduleInfo>();
  @$core.pragma('dart2js:noInline')
  static ScheduleInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleInfo>(create);
  static ScheduleInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get relStart => $_getI64(0);
  @$pb.TagNumber(1)
  set relStart($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRelStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearRelStart() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get relEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set relEnd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRelEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearRelEnd() => clearField(2);

  @$pb.TagNumber(3)
  $1.ProfileInfo get profile => $_getN(2);
  @$pb.TagNumber(3)
  set profile($1.ProfileInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfile() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfile() => clearField(3);
  @$pb.TagNumber(3)
  $1.ProfileInfo ensureProfile() => $_ensure(2);

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

class ScheduleList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScheduleList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..pc<ScheduleInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schedules', $pb.PbFieldType.PM, subBuilder: ScheduleInfo.create)
    ..hasRequiredFields = false
  ;

  ScheduleList._() : super();
  factory ScheduleList({
    $core.Iterable<ScheduleInfo>? schedules,
  }) {
    final _result = create();
    if (schedules != null) {
      _result.schedules.addAll(schedules);
    }
    return _result;
  }
  factory ScheduleList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleList clone() => ScheduleList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleList copyWith(void Function(ScheduleList) updates) => super.copyWith((message) => updates(message as ScheduleList)) as ScheduleList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScheduleList create() => ScheduleList._();
  ScheduleList createEmptyInstance() => create();
  static $pb.PbList<ScheduleList> createRepeated() => $pb.PbList<ScheduleList>();
  @$core.pragma('dart2js:noInline')
  static ScheduleList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleList>(create);
  static ScheduleList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ScheduleInfo> get schedules => $_getList(0);
}

