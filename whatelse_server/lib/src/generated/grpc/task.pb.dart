///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'profile.pb.dart' as $1;
import 'channel.pb.dart' as $3;

class TaskInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requireLocation', protoName: 'requireLocation')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requireTime', protoName: 'requireTime')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requireAttachment', protoName: 'requireAttachment')
    ..aOM<$1.ProfileInfo>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', subBuilder: $1.ProfileInfo.create)
    ..aOM<TaskInfo>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentTask', protoName: 'parentTask', subBuilder: TaskInfo.create)
    ..pc<$3.ChannelInfo>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: $3.ChannelInfo.create)
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  TaskInfo._() : super();
  factory TaskInfo({
    $core.String? uuid,
    $core.String? title,
    $core.String? desc,
    $core.String? content,
    $core.String? location,
    $core.bool? requireLocation,
    $core.bool? requireTime,
    $core.bool? requireAttachment,
    $1.ProfileInfo? owner,
    TaskInfo? parentTask,
    $core.Iterable<$3.ChannelInfo>? channels,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (title != null) {
      _result.title = title;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (content != null) {
      _result.content = content;
    }
    if (location != null) {
      _result.location = location;
    }
    if (requireLocation != null) {
      _result.requireLocation = requireLocation;
    }
    if (requireTime != null) {
      _result.requireTime = requireTime;
    }
    if (requireAttachment != null) {
      _result.requireAttachment = requireAttachment;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (parentTask != null) {
      _result.parentTask = parentTask;
    }
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory TaskInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskInfo clone() => TaskInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskInfo copyWith(void Function(TaskInfo) updates) => super.copyWith((message) => updates(message as TaskInfo)) as TaskInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskInfo create() => TaskInfo._();
  TaskInfo createEmptyInstance() => create();
  static $pb.PbList<TaskInfo> createRepeated() => $pb.PbList<TaskInfo>();
  @$core.pragma('dart2js:noInline')
  static TaskInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskInfo>(create);
  static TaskInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get location => $_getSZ(4);
  @$pb.TagNumber(5)
  set location($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get requireLocation => $_getBF(5);
  @$pb.TagNumber(6)
  set requireLocation($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequireLocation() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequireLocation() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get requireTime => $_getBF(6);
  @$pb.TagNumber(7)
  set requireTime($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequireTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearRequireTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get requireAttachment => $_getBF(7);
  @$pb.TagNumber(8)
  set requireAttachment($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequireAttachment() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequireAttachment() => clearField(8);

  @$pb.TagNumber(9)
  $1.ProfileInfo get owner => $_getN(8);
  @$pb.TagNumber(9)
  set owner($1.ProfileInfo v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasOwner() => $_has(8);
  @$pb.TagNumber(9)
  void clearOwner() => clearField(9);
  @$pb.TagNumber(9)
  $1.ProfileInfo ensureOwner() => $_ensure(8);

  @$pb.TagNumber(10)
  TaskInfo get parentTask => $_getN(9);
  @$pb.TagNumber(10)
  set parentTask(TaskInfo v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasParentTask() => $_has(9);
  @$pb.TagNumber(10)
  void clearParentTask() => clearField(10);
  @$pb.TagNumber(10)
  TaskInfo ensureParentTask() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<$3.ChannelInfo> get channels => $_getList(10);

  @$pb.TagNumber(12)
  $fixnum.Int64 get updateAt => $_getI64(11);
  @$pb.TagNumber(12)
  set updateAt($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdateAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpdateAt() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get deleteAt => $_getI64(12);
  @$pb.TagNumber(13)
  set deleteAt($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDeleteAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearDeleteAt() => clearField(13);
}

class TaskList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..pc<TaskInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: TaskInfo.create)
    ..hasRequiredFields = false
  ;

  TaskList._() : super();
  factory TaskList({
    $core.Iterable<TaskInfo>? tasks,
  }) {
    final _result = create();
    if (tasks != null) {
      _result.tasks.addAll(tasks);
    }
    return _result;
  }
  factory TaskList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskList clone() => TaskList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskList copyWith(void Function(TaskList) updates) => super.copyWith((message) => updates(message as TaskList)) as TaskList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskList create() => TaskList._();
  TaskList createEmptyInstance() => create();
  static $pb.PbList<TaskList> createRepeated() => $pb.PbList<TaskList>();
  @$core.pragma('dart2js:noInline')
  static TaskList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskList>(create);
  static TaskList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskInfo> get tasks => $_getList(0);
}

