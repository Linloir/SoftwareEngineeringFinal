///
//  Generated code. Do not modify.
//  source: task_asset.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'task.pb.dart' as $4;

class TaskAssetInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskAssetInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task_asset'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash')
    ..aOM<$4.TaskInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'task', subBuilder: $4.TaskInfo.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  TaskAssetInfo._() : super();
  factory TaskAssetInfo({
    $core.String? name,
    $core.String? hash,
    $4.TaskInfo? task,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (task != null) {
      _result.task = task;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory TaskAssetInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskAssetInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskAssetInfo clone() => TaskAssetInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskAssetInfo copyWith(void Function(TaskAssetInfo) updates) => super.copyWith((message) => updates(message as TaskAssetInfo)) as TaskAssetInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskAssetInfo create() => TaskAssetInfo._();
  TaskAssetInfo createEmptyInstance() => create();
  static $pb.PbList<TaskAssetInfo> createRepeated() => $pb.PbList<TaskAssetInfo>();
  @$core.pragma('dart2js:noInline')
  static TaskAssetInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskAssetInfo>(create);
  static TaskAssetInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hash => $_getSZ(1);
  @$pb.TagNumber(2)
  set hash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);

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
  $fixnum.Int64 get updateAt => $_getI64(3);
  @$pb.TagNumber(4)
  set updateAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateAt() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get deleteAt => $_getI64(4);
  @$pb.TagNumber(5)
  set deleteAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeleteAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeleteAt() => clearField(5);
}

class TaskAssetList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskAssetList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task_asset'), createEmptyInstance: create)
    ..pc<TaskAssetInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskAssets', $pb.PbFieldType.PM, protoName: 'taskAssets', subBuilder: TaskAssetInfo.create)
    ..hasRequiredFields = false
  ;

  TaskAssetList._() : super();
  factory TaskAssetList({
    $core.Iterable<TaskAssetInfo>? taskAssets,
  }) {
    final _result = create();
    if (taskAssets != null) {
      _result.taskAssets.addAll(taskAssets);
    }
    return _result;
  }
  factory TaskAssetList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskAssetList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskAssetList clone() => TaskAssetList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskAssetList copyWith(void Function(TaskAssetList) updates) => super.copyWith((message) => updates(message as TaskAssetList)) as TaskAssetList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskAssetList create() => TaskAssetList._();
  TaskAssetList createEmptyInstance() => create();
  static $pb.PbList<TaskAssetList> createRepeated() => $pb.PbList<TaskAssetList>();
  @$core.pragma('dart2js:noInline')
  static TaskAssetList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskAssetList>(create);
  static TaskAssetList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskAssetInfo> get taskAssets => $_getList(0);
}

class TaskAssetIdentifier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskAssetIdentifier', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task_asset'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskUuid', protoName: 'taskUuid')
    ..hasRequiredFields = false
  ;

  TaskAssetIdentifier._() : super();
  factory TaskAssetIdentifier({
    $core.String? hash,
    $core.String? taskUuid,
  }) {
    final _result = create();
    if (hash != null) {
      _result.hash = hash;
    }
    if (taskUuid != null) {
      _result.taskUuid = taskUuid;
    }
    return _result;
  }
  factory TaskAssetIdentifier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskAssetIdentifier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskAssetIdentifier clone() => TaskAssetIdentifier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskAssetIdentifier copyWith(void Function(TaskAssetIdentifier) updates) => super.copyWith((message) => updates(message as TaskAssetIdentifier)) as TaskAssetIdentifier; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskAssetIdentifier create() => TaskAssetIdentifier._();
  TaskAssetIdentifier createEmptyInstance() => create();
  static $pb.PbList<TaskAssetIdentifier> createRepeated() => $pb.PbList<TaskAssetIdentifier>();
  @$core.pragma('dart2js:noInline')
  static TaskAssetIdentifier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskAssetIdentifier>(create);
  static TaskAssetIdentifier? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskUuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskUuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskUuid() => clearField(2);
}

class TaskAssetBytes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskAssetBytes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task_asset'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TaskAssetBytes._() : super();
  factory TaskAssetBytes({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory TaskAssetBytes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskAssetBytes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskAssetBytes clone() => TaskAssetBytes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskAssetBytes copyWith(void Function(TaskAssetBytes) updates) => super.copyWith((message) => updates(message as TaskAssetBytes)) as TaskAssetBytes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskAssetBytes create() => TaskAssetBytes._();
  TaskAssetBytes createEmptyInstance() => create();
  static $pb.PbList<TaskAssetBytes> createRepeated() => $pb.PbList<TaskAssetBytes>();
  @$core.pragma('dart2js:noInline')
  static TaskAssetBytes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskAssetBytes>(create);
  static TaskAssetBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

