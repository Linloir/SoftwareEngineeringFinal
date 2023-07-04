///
//  Generated code. Do not modify.
//  source: task_assignment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'profile.pb.dart' as $1;
import 'task.pb.dart' as $4;
import 'category.pb.dart' as $8;
import 'tag.pb.dart' as $9;

import 'task_assignment.pbenum.dart';

export 'task_assignment.pbenum.dart';

class TaskAssignmentInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskAssignmentInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task_assignment'), createEmptyInstance: create)
    ..e<TaskAssignmentStatus>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskAssignmentStatus.ACCEPTED, valueOf: TaskAssignmentStatus.valueOf, enumValues: TaskAssignmentStatus.values)
    ..e<TaskPriority>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: TaskPriority.NONE, valueOf: TaskPriority.valueOf, enumValues: TaskPriority.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'starred')
    ..aOM<$1.ProfileInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $1.ProfileInfo.create)
    ..aOM<$4.TaskInfo>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'task', subBuilder: $4.TaskInfo.create)
    ..aOM<$8.CategoryInfo>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', subBuilder: $8.CategoryInfo.create)
    ..pc<$9.TagInfo>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: $9.TagInfo.create)
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  TaskAssignmentInfo._() : super();
  factory TaskAssignmentInfo({
    TaskAssignmentStatus? status,
    TaskPriority? priority,
    $core.bool? starred,
    $1.ProfileInfo? profile,
    $4.TaskInfo? task,
    $8.CategoryInfo? category,
    $core.Iterable<$9.TagInfo>? tags,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (priority != null) {
      _result.priority = priority;
    }
    if (starred != null) {
      _result.starred = starred;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (task != null) {
      _result.task = task;
    }
    if (category != null) {
      _result.category = category;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory TaskAssignmentInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskAssignmentInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskAssignmentInfo clone() => TaskAssignmentInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskAssignmentInfo copyWith(void Function(TaskAssignmentInfo) updates) => super.copyWith((message) => updates(message as TaskAssignmentInfo)) as TaskAssignmentInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskAssignmentInfo create() => TaskAssignmentInfo._();
  TaskAssignmentInfo createEmptyInstance() => create();
  static $pb.PbList<TaskAssignmentInfo> createRepeated() => $pb.PbList<TaskAssignmentInfo>();
  @$core.pragma('dart2js:noInline')
  static TaskAssignmentInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskAssignmentInfo>(create);
  static TaskAssignmentInfo? _defaultInstance;

  @$pb.TagNumber(1)
  TaskAssignmentStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(TaskAssignmentStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  TaskPriority get priority => $_getN(1);
  @$pb.TagNumber(2)
  set priority(TaskPriority v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPriority() => $_has(1);
  @$pb.TagNumber(2)
  void clearPriority() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get starred => $_getBF(2);
  @$pb.TagNumber(3)
  set starred($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStarred() => $_has(2);
  @$pb.TagNumber(3)
  void clearStarred() => clearField(3);

  @$pb.TagNumber(4)
  $1.ProfileInfo get profile => $_getN(3);
  @$pb.TagNumber(4)
  set profile($1.ProfileInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasProfile() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfile() => clearField(4);
  @$pb.TagNumber(4)
  $1.ProfileInfo ensureProfile() => $_ensure(3);

  @$pb.TagNumber(5)
  $4.TaskInfo get task => $_getN(4);
  @$pb.TagNumber(5)
  set task($4.TaskInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTask() => $_has(4);
  @$pb.TagNumber(5)
  void clearTask() => clearField(5);
  @$pb.TagNumber(5)
  $4.TaskInfo ensureTask() => $_ensure(4);

  @$pb.TagNumber(6)
  $8.CategoryInfo get category => $_getN(5);
  @$pb.TagNumber(6)
  set category($8.CategoryInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategory() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategory() => clearField(6);
  @$pb.TagNumber(6)
  $8.CategoryInfo ensureCategory() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$9.TagInfo> get tags => $_getList(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get updateAt => $_getI64(7);
  @$pb.TagNumber(8)
  set updateAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdateAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdateAt() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get deleteAt => $_getI64(8);
  @$pb.TagNumber(9)
  set deleteAt($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDeleteAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearDeleteAt() => clearField(9);
}

class TaskAssignmentList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskAssignmentList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task_assignment'), createEmptyInstance: create)
    ..pc<TaskAssignmentInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskAssignments', $pb.PbFieldType.PM, protoName: 'taskAssignments', subBuilder: TaskAssignmentInfo.create)
    ..hasRequiredFields = false
  ;

  TaskAssignmentList._() : super();
  factory TaskAssignmentList({
    $core.Iterable<TaskAssignmentInfo>? taskAssignments,
  }) {
    final _result = create();
    if (taskAssignments != null) {
      _result.taskAssignments.addAll(taskAssignments);
    }
    return _result;
  }
  factory TaskAssignmentList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskAssignmentList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskAssignmentList clone() => TaskAssignmentList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskAssignmentList copyWith(void Function(TaskAssignmentList) updates) => super.copyWith((message) => updates(message as TaskAssignmentList)) as TaskAssignmentList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskAssignmentList create() => TaskAssignmentList._();
  TaskAssignmentList createEmptyInstance() => create();
  static $pb.PbList<TaskAssignmentList> createRepeated() => $pb.PbList<TaskAssignmentList>();
  @$core.pragma('dart2js:noInline')
  static TaskAssignmentList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskAssignmentList>(create);
  static TaskAssignmentList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskAssignmentInfo> get taskAssignments => $_getList(0);
}

