///
//  Generated code. Do not modify.
//  source: taskass.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'task.pb.dart' as $2;

import 'taskass.pbenum.dart';

export 'taskass.pbenum.dart';

class CreateTaskAssignmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskAssignmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..e<TaskAssignmentStatus>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskAssignmentStatus.ACCEPTED, valueOf: TaskAssignmentStatus.valueOf, enumValues: TaskAssignmentStatus.values)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryID', protoName: 'categoryID')
    ..p<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tagIDs', $pb.PbFieldType.K6, protoName: 'tagIDs')
    ..e<TaskPriority>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: TaskPriority.NONE, valueOf: TaskPriority.valueOf, enumValues: TaskPriority.values)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'starred')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'archived')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postAction', protoName: 'postAction')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  CreateTaskAssignmentRequest._() : super();
  factory CreateTaskAssignmentRequest({
    $fixnum.Int64? taskId,
    $fixnum.Int64? profileId,
    TaskAssignmentStatus? status,
    $fixnum.Int64? categoryID,
    $core.Iterable<$fixnum.Int64>? tagIDs,
    TaskPriority? priority,
    $core.bool? starred,
    $core.bool? archived,
    $core.bool? shareRecord,
    $core.String? postAction,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (categoryID != null) {
      _result.categoryID = categoryID;
    }
    if (tagIDs != null) {
      _result.tagIDs.addAll(tagIDs);
    }
    if (priority != null) {
      _result.priority = priority;
    }
    if (starred != null) {
      _result.starred = starred;
    }
    if (archived != null) {
      _result.archived = archived;
    }
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (postAction != null) {
      _result.postAction = postAction;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory CreateTaskAssignmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskAssignmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskAssignmentRequest clone() => CreateTaskAssignmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskAssignmentRequest copyWith(void Function(CreateTaskAssignmentRequest) updates) => super.copyWith((message) => updates(message as CreateTaskAssignmentRequest)) as CreateTaskAssignmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTaskAssignmentRequest create() => CreateTaskAssignmentRequest._();
  CreateTaskAssignmentRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTaskAssignmentRequest> createRepeated() => $pb.PbList<CreateTaskAssignmentRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskAssignmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskAssignmentRequest>(create);
  static CreateTaskAssignmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get profileId => $_getI64(1);
  @$pb.TagNumber(2)
  set profileId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileId() => clearField(2);

  @$pb.TagNumber(3)
  TaskAssignmentStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(TaskAssignmentStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get categoryID => $_getI64(3);
  @$pb.TagNumber(4)
  set categoryID($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategoryID() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategoryID() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$fixnum.Int64> get tagIDs => $_getList(4);

  @$pb.TagNumber(6)
  TaskPriority get priority => $_getN(5);
  @$pb.TagNumber(6)
  set priority(TaskPriority v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPriority() => $_has(5);
  @$pb.TagNumber(6)
  void clearPriority() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get starred => $_getBF(6);
  @$pb.TagNumber(7)
  set starred($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStarred() => $_has(6);
  @$pb.TagNumber(7)
  void clearStarred() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get archived => $_getBF(7);
  @$pb.TagNumber(8)
  set archived($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasArchived() => $_has(7);
  @$pb.TagNumber(8)
  void clearArchived() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get shareRecord => $_getBF(8);
  @$pb.TagNumber(9)
  set shareRecord($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasShareRecord() => $_has(8);
  @$pb.TagNumber(9)
  void clearShareRecord() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get postAction => $_getSZ(9);
  @$pb.TagNumber(10)
  set postAction($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPostAction() => $_has(9);
  @$pb.TagNumber(10)
  void clearPostAction() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get updateAt => $_getI64(10);
  @$pb.TagNumber(11)
  set updateAt($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdateAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdateAt() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get deleteAt => $_getI64(11);
  @$pb.TagNumber(12)
  set deleteAt($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeleteAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearDeleteAt() => clearField(12);
}

class CreateTaskAssignmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskAssignmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignmentId', protoName: 'assignmentId')
    ..hasRequiredFields = false
  ;

  CreateTaskAssignmentResponse._() : super();
  factory CreateTaskAssignmentResponse({
    $fixnum.Int64? assignmentId,
  }) {
    final _result = create();
    if (assignmentId != null) {
      _result.assignmentId = assignmentId;
    }
    return _result;
  }
  factory CreateTaskAssignmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskAssignmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskAssignmentResponse clone() => CreateTaskAssignmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskAssignmentResponse copyWith(void Function(CreateTaskAssignmentResponse) updates) => super.copyWith((message) => updates(message as CreateTaskAssignmentResponse)) as CreateTaskAssignmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTaskAssignmentResponse create() => CreateTaskAssignmentResponse._();
  CreateTaskAssignmentResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTaskAssignmentResponse> createRepeated() => $pb.PbList<CreateTaskAssignmentResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskAssignmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskAssignmentResponse>(create);
  static CreateTaskAssignmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assignmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set assignmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentId() => clearField(1);
}

class GetTaskAssignmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskAssignmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignmentId', protoName: 'assignmentId')
    ..hasRequiredFields = false
  ;

  GetTaskAssignmentRequest._() : super();
  factory GetTaskAssignmentRequest({
    $fixnum.Int64? assignmentId,
  }) {
    final _result = create();
    if (assignmentId != null) {
      _result.assignmentId = assignmentId;
    }
    return _result;
  }
  factory GetTaskAssignmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskAssignmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskAssignmentRequest clone() => GetTaskAssignmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskAssignmentRequest copyWith(void Function(GetTaskAssignmentRequest) updates) => super.copyWith((message) => updates(message as GetTaskAssignmentRequest)) as GetTaskAssignmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskAssignmentRequest create() => GetTaskAssignmentRequest._();
  GetTaskAssignmentRequest createEmptyInstance() => create();
  static $pb.PbList<GetTaskAssignmentRequest> createRepeated() => $pb.PbList<GetTaskAssignmentRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTaskAssignmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskAssignmentRequest>(create);
  static GetTaskAssignmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assignmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set assignmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentId() => clearField(1);
}

class GetTaskAssignmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskAssignmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignmentId', protoName: 'assignmentId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..e<TaskAssignmentStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskAssignmentStatus.ACCEPTED, valueOf: TaskAssignmentStatus.valueOf, enumValues: TaskAssignmentStatus.values)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryID', protoName: 'categoryID')
    ..p<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tagIDs', $pb.PbFieldType.K6, protoName: 'tagIDs')
    ..e<TaskPriority>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: TaskPriority.NONE, valueOf: TaskPriority.valueOf, enumValues: TaskPriority.values)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'starred')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'archived')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postAction', protoName: 'postAction')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  GetTaskAssignmentResponse._() : super();
  factory GetTaskAssignmentResponse({
    $fixnum.Int64? assignmentId,
    $fixnum.Int64? taskId,
    $fixnum.Int64? profileId,
    TaskAssignmentStatus? status,
    $fixnum.Int64? categoryID,
    $core.Iterable<$fixnum.Int64>? tagIDs,
    TaskPriority? priority,
    $core.bool? starred,
    $core.bool? archived,
    $core.bool? shareRecord,
    $core.String? postAction,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (assignmentId != null) {
      _result.assignmentId = assignmentId;
    }
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (categoryID != null) {
      _result.categoryID = categoryID;
    }
    if (tagIDs != null) {
      _result.tagIDs.addAll(tagIDs);
    }
    if (priority != null) {
      _result.priority = priority;
    }
    if (starred != null) {
      _result.starred = starred;
    }
    if (archived != null) {
      _result.archived = archived;
    }
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (postAction != null) {
      _result.postAction = postAction;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory GetTaskAssignmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskAssignmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskAssignmentResponse clone() => GetTaskAssignmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskAssignmentResponse copyWith(void Function(GetTaskAssignmentResponse) updates) => super.copyWith((message) => updates(message as GetTaskAssignmentResponse)) as GetTaskAssignmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskAssignmentResponse create() => GetTaskAssignmentResponse._();
  GetTaskAssignmentResponse createEmptyInstance() => create();
  static $pb.PbList<GetTaskAssignmentResponse> createRepeated() => $pb.PbList<GetTaskAssignmentResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTaskAssignmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskAssignmentResponse>(create);
  static GetTaskAssignmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assignmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set assignmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get taskId => $_getI64(1);
  @$pb.TagNumber(2)
  set taskId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get profileId => $_getI64(2);
  @$pb.TagNumber(3)
  set profileId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfileId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfileId() => clearField(3);

  @$pb.TagNumber(4)
  TaskAssignmentStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(TaskAssignmentStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get categoryID => $_getI64(4);
  @$pb.TagNumber(5)
  set categoryID($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategoryID() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategoryID() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get tagIDs => $_getList(5);

  @$pb.TagNumber(7)
  TaskPriority get priority => $_getN(6);
  @$pb.TagNumber(7)
  set priority(TaskPriority v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriority() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriority() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get starred => $_getBF(7);
  @$pb.TagNumber(8)
  set starred($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStarred() => $_has(7);
  @$pb.TagNumber(8)
  void clearStarred() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get archived => $_getBF(8);
  @$pb.TagNumber(9)
  set archived($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasArchived() => $_has(8);
  @$pb.TagNumber(9)
  void clearArchived() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get shareRecord => $_getBF(9);
  @$pb.TagNumber(10)
  set shareRecord($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasShareRecord() => $_has(9);
  @$pb.TagNumber(10)
  void clearShareRecord() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get postAction => $_getSZ(10);
  @$pb.TagNumber(11)
  set postAction($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPostAction() => $_has(10);
  @$pb.TagNumber(11)
  void clearPostAction() => clearField(11);

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

class ModifyTaskAssignmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyTaskAssignmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignmentId', protoName: 'assignmentId')
    ..e<TaskAssignmentStatus>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskAssignmentStatus.ACCEPTED, valueOf: TaskAssignmentStatus.valueOf, enumValues: TaskAssignmentStatus.values)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryID', protoName: 'categoryID')
    ..p<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tagIDs', $pb.PbFieldType.K6, protoName: 'tagIDs')
    ..e<TaskPriority>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: TaskPriority.NONE, valueOf: TaskPriority.valueOf, enumValues: TaskPriority.values)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'starred')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'archived')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postAction', protoName: 'postAction')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ModifyTaskAssignmentRequest._() : super();
  factory ModifyTaskAssignmentRequest({
    $fixnum.Int64? assignmentId,
    TaskAssignmentStatus? status,
    $fixnum.Int64? categoryID,
    $core.Iterable<$fixnum.Int64>? tagIDs,
    TaskPriority? priority,
    $core.bool? starred,
    $core.bool? archived,
    $core.bool? shareRecord,
    $core.String? postAction,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (assignmentId != null) {
      _result.assignmentId = assignmentId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (categoryID != null) {
      _result.categoryID = categoryID;
    }
    if (tagIDs != null) {
      _result.tagIDs.addAll(tagIDs);
    }
    if (priority != null) {
      _result.priority = priority;
    }
    if (starred != null) {
      _result.starred = starred;
    }
    if (archived != null) {
      _result.archived = archived;
    }
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (postAction != null) {
      _result.postAction = postAction;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ModifyTaskAssignmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyTaskAssignmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyTaskAssignmentRequest clone() => ModifyTaskAssignmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyTaskAssignmentRequest copyWith(void Function(ModifyTaskAssignmentRequest) updates) => super.copyWith((message) => updates(message as ModifyTaskAssignmentRequest)) as ModifyTaskAssignmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyTaskAssignmentRequest create() => ModifyTaskAssignmentRequest._();
  ModifyTaskAssignmentRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyTaskAssignmentRequest> createRepeated() => $pb.PbList<ModifyTaskAssignmentRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyTaskAssignmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyTaskAssignmentRequest>(create);
  static ModifyTaskAssignmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assignmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set assignmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentId() => clearField(1);

  @$pb.TagNumber(2)
  TaskAssignmentStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(TaskAssignmentStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get categoryID => $_getI64(2);
  @$pb.TagNumber(3)
  set categoryID($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategoryID() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategoryID() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get tagIDs => $_getList(3);

  @$pb.TagNumber(5)
  TaskPriority get priority => $_getN(4);
  @$pb.TagNumber(5)
  set priority(TaskPriority v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearPriority() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get starred => $_getBF(5);
  @$pb.TagNumber(6)
  set starred($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStarred() => $_has(5);
  @$pb.TagNumber(6)
  void clearStarred() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get archived => $_getBF(6);
  @$pb.TagNumber(7)
  set archived($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasArchived() => $_has(6);
  @$pb.TagNumber(7)
  void clearArchived() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get shareRecord => $_getBF(7);
  @$pb.TagNumber(8)
  set shareRecord($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasShareRecord() => $_has(7);
  @$pb.TagNumber(8)
  void clearShareRecord() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get postAction => $_getSZ(8);
  @$pb.TagNumber(9)
  set postAction($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPostAction() => $_has(8);
  @$pb.TagNumber(9)
  void clearPostAction() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get updateAt => $_getI64(9);
  @$pb.TagNumber(10)
  set updateAt($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpdateAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearUpdateAt() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get deleteAt => $_getI64(10);
  @$pb.TagNumber(11)
  set deleteAt($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeleteAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeleteAt() => clearField(11);
}

class ModifyTaskAssignmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyTaskAssignmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignmentId', protoName: 'assignmentId')
    ..hasRequiredFields = false
  ;

  ModifyTaskAssignmentResponse._() : super();
  factory ModifyTaskAssignmentResponse({
    $fixnum.Int64? assignmentId,
  }) {
    final _result = create();
    if (assignmentId != null) {
      _result.assignmentId = assignmentId;
    }
    return _result;
  }
  factory ModifyTaskAssignmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyTaskAssignmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyTaskAssignmentResponse clone() => ModifyTaskAssignmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyTaskAssignmentResponse copyWith(void Function(ModifyTaskAssignmentResponse) updates) => super.copyWith((message) => updates(message as ModifyTaskAssignmentResponse)) as ModifyTaskAssignmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyTaskAssignmentResponse create() => ModifyTaskAssignmentResponse._();
  ModifyTaskAssignmentResponse createEmptyInstance() => create();
  static $pb.PbList<ModifyTaskAssignmentResponse> createRepeated() => $pb.PbList<ModifyTaskAssignmentResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifyTaskAssignmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyTaskAssignmentResponse>(create);
  static ModifyTaskAssignmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assignmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set assignmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentId() => clearField(1);
}

class RemoveTaskAssignmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveTaskAssignmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignmentId', protoName: 'assignmentId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveTaskAssignmentRequest._() : super();
  factory RemoveTaskAssignmentRequest({
    $fixnum.Int64? assignmentId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (assignmentId != null) {
      _result.assignmentId = assignmentId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveTaskAssignmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveTaskAssignmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveTaskAssignmentRequest clone() => RemoveTaskAssignmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveTaskAssignmentRequest copyWith(void Function(RemoveTaskAssignmentRequest) updates) => super.copyWith((message) => updates(message as RemoveTaskAssignmentRequest)) as RemoveTaskAssignmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveTaskAssignmentRequest create() => RemoveTaskAssignmentRequest._();
  RemoveTaskAssignmentRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveTaskAssignmentRequest> createRepeated() => $pb.PbList<RemoveTaskAssignmentRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveTaskAssignmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveTaskAssignmentRequest>(create);
  static RemoveTaskAssignmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assignmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set assignmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveTaskAssignmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveTaskAssignmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveTaskAssignmentResponse._() : super();
  factory RemoveTaskAssignmentResponse() => create();
  factory RemoveTaskAssignmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveTaskAssignmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveTaskAssignmentResponse clone() => RemoveTaskAssignmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveTaskAssignmentResponse copyWith(void Function(RemoveTaskAssignmentResponse) updates) => super.copyWith((message) => updates(message as RemoveTaskAssignmentResponse)) as RemoveTaskAssignmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveTaskAssignmentResponse create() => RemoveTaskAssignmentResponse._();
  RemoveTaskAssignmentResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveTaskAssignmentResponse> createRepeated() => $pb.PbList<RemoveTaskAssignmentResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveTaskAssignmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveTaskAssignmentResponse>(create);
  static RemoveTaskAssignmentResponse? _defaultInstance;
}

class TaskAssignmentInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskAssignmentInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignmentId', protoName: 'assignmentId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..e<TaskAssignmentStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskAssignmentStatus.ACCEPTED, valueOf: TaskAssignmentStatus.valueOf, enumValues: TaskAssignmentStatus.values)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categoryID', protoName: 'categoryID')
    ..p<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tagIDs', $pb.PbFieldType.K6, protoName: 'tagIDs')
    ..e<TaskPriority>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: TaskPriority.NONE, valueOf: TaskPriority.valueOf, enumValues: TaskPriority.values)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'starred')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'archived')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postAction', protoName: 'postAction')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  TaskAssignmentInfo._() : super();
  factory TaskAssignmentInfo({
    $fixnum.Int64? assignmentId,
    $fixnum.Int64? taskId,
    $fixnum.Int64? profileId,
    TaskAssignmentStatus? status,
    $fixnum.Int64? categoryID,
    $core.Iterable<$fixnum.Int64>? tagIDs,
    TaskPriority? priority,
    $core.bool? starred,
    $core.bool? archived,
    $core.bool? shareRecord,
    $core.String? postAction,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (assignmentId != null) {
      _result.assignmentId = assignmentId;
    }
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (categoryID != null) {
      _result.categoryID = categoryID;
    }
    if (tagIDs != null) {
      _result.tagIDs.addAll(tagIDs);
    }
    if (priority != null) {
      _result.priority = priority;
    }
    if (starred != null) {
      _result.starred = starred;
    }
    if (archived != null) {
      _result.archived = archived;
    }
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (postAction != null) {
      _result.postAction = postAction;
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
  $fixnum.Int64 get assignmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set assignmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get taskId => $_getI64(1);
  @$pb.TagNumber(2)
  set taskId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get profileId => $_getI64(2);
  @$pb.TagNumber(3)
  set profileId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfileId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfileId() => clearField(3);

  @$pb.TagNumber(4)
  TaskAssignmentStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(TaskAssignmentStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get categoryID => $_getI64(4);
  @$pb.TagNumber(5)
  set categoryID($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategoryID() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategoryID() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get tagIDs => $_getList(5);

  @$pb.TagNumber(7)
  TaskPriority get priority => $_getN(6);
  @$pb.TagNumber(7)
  set priority(TaskPriority v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriority() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriority() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get starred => $_getBF(7);
  @$pb.TagNumber(8)
  set starred($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStarred() => $_has(7);
  @$pb.TagNumber(8)
  void clearStarred() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get archived => $_getBF(8);
  @$pb.TagNumber(9)
  set archived($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasArchived() => $_has(8);
  @$pb.TagNumber(9)
  void clearArchived() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get shareRecord => $_getBF(9);
  @$pb.TagNumber(10)
  set shareRecord($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasShareRecord() => $_has(9);
  @$pb.TagNumber(10)
  void clearShareRecord() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get postAction => $_getSZ(10);
  @$pb.TagNumber(11)
  set postAction($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPostAction() => $_has(10);
  @$pb.TagNumber(11)
  void clearPostAction() => clearField(11);

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

class GetAssignedTasksRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAssignedTasksRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetAssignedTasksRequest._() : super();
  factory GetAssignedTasksRequest({
    $fixnum.Int64? profileId,
    $fixnum.Int64? lastFetchAt,
  }) {
    final _result = create();
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (lastFetchAt != null) {
      _result.lastFetchAt = lastFetchAt;
    }
    return _result;
  }
  factory GetAssignedTasksRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksRequest clone() => GetAssignedTasksRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksRequest copyWith(void Function(GetAssignedTasksRequest) updates) => super.copyWith((message) => updates(message as GetAssignedTasksRequest)) as GetAssignedTasksRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksRequest create() => GetAssignedTasksRequest._();
  GetAssignedTasksRequest createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksRequest> createRepeated() => $pb.PbList<GetAssignedTasksRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksRequest>(create);
  static GetAssignedTasksRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get profileId => $_getI64(0);
  @$pb.TagNumber(1)
  set profileId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastFetchAt => $_getI64(1);
  @$pb.TagNumber(2)
  set lastFetchAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastFetchAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastFetchAt() => clearField(2);
}

class GetAssignedTasksResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAssignedTasksResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..pc<TaskAssignmentInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskAssignments', $pb.PbFieldType.PM, protoName: 'taskAssignments', subBuilder: TaskAssignmentInfo.create)
    ..hasRequiredFields = false
  ;

  GetAssignedTasksResponse._() : super();
  factory GetAssignedTasksResponse({
    $core.Iterable<TaskAssignmentInfo>? taskAssignments,
  }) {
    final _result = create();
    if (taskAssignments != null) {
      _result.taskAssignments.addAll(taskAssignments);
    }
    return _result;
  }
  factory GetAssignedTasksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse clone() => GetAssignedTasksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse copyWith(void Function(GetAssignedTasksResponse) updates) => super.copyWith((message) => updates(message as GetAssignedTasksResponse)) as GetAssignedTasksResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse create() => GetAssignedTasksResponse._();
  GetAssignedTasksResponse createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksResponse> createRepeated() => $pb.PbList<GetAssignedTasksResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksResponse>(create);
  static GetAssignedTasksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskAssignmentInfo> get taskAssignments => $_getList(0);
}

class GetUnassignedTasksRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUnassignedTasksRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..hasRequiredFields = false
  ;

  GetUnassignedTasksRequest._() : super();
  factory GetUnassignedTasksRequest({
    $fixnum.Int64? profileId,
  }) {
    final _result = create();
    if (profileId != null) {
      _result.profileId = profileId;
    }
    return _result;
  }
  factory GetUnassignedTasksRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUnassignedTasksRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUnassignedTasksRequest clone() => GetUnassignedTasksRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUnassignedTasksRequest copyWith(void Function(GetUnassignedTasksRequest) updates) => super.copyWith((message) => updates(message as GetUnassignedTasksRequest)) as GetUnassignedTasksRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUnassignedTasksRequest create() => GetUnassignedTasksRequest._();
  GetUnassignedTasksRequest createEmptyInstance() => create();
  static $pb.PbList<GetUnassignedTasksRequest> createRepeated() => $pb.PbList<GetUnassignedTasksRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUnassignedTasksRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUnassignedTasksRequest>(create);
  static GetUnassignedTasksRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get profileId => $_getI64(0);
  @$pb.TagNumber(1)
  set profileId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileId() => clearField(1);
}

class GetUnassignedTasksResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUnassignedTasksResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', $pb.PbFieldType.K3, protoName: 'taskId')
    ..hasRequiredFields = false
  ;

  GetUnassignedTasksResponse._() : super();
  factory GetUnassignedTasksResponse({
    $core.Iterable<$core.int>? taskId,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId.addAll(taskId);
    }
    return _result;
  }
  factory GetUnassignedTasksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUnassignedTasksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUnassignedTasksResponse clone() => GetUnassignedTasksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUnassignedTasksResponse copyWith(void Function(GetUnassignedTasksResponse) updates) => super.copyWith((message) => updates(message as GetUnassignedTasksResponse)) as GetUnassignedTasksResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUnassignedTasksResponse create() => GetUnassignedTasksResponse._();
  GetUnassignedTasksResponse createEmptyInstance() => create();
  static $pb.PbList<GetUnassignedTasksResponse> createRepeated() => $pb.PbList<GetUnassignedTasksResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUnassignedTasksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUnassignedTasksResponse>(create);
  static GetUnassignedTasksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get taskId => $_getList(0);
}

class TaskAssignmentInfoWithTaskInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskAssignmentInfoWithTaskInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aOM<TaskAssignmentInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignmentInfo', protoName: 'assignmentInfo', subBuilder: TaskAssignmentInfo.create)
    ..aOM<$2.TaskInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskInfo', protoName: 'taskInfo', subBuilder: $2.TaskInfo.create)
    ..hasRequiredFields = false
  ;

  TaskAssignmentInfoWithTaskInfo._() : super();
  factory TaskAssignmentInfoWithTaskInfo({
    TaskAssignmentInfo? assignmentInfo,
    $2.TaskInfo? taskInfo,
  }) {
    final _result = create();
    if (assignmentInfo != null) {
      _result.assignmentInfo = assignmentInfo;
    }
    if (taskInfo != null) {
      _result.taskInfo = taskInfo;
    }
    return _result;
  }
  factory TaskAssignmentInfoWithTaskInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskAssignmentInfoWithTaskInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskAssignmentInfoWithTaskInfo clone() => TaskAssignmentInfoWithTaskInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskAssignmentInfoWithTaskInfo copyWith(void Function(TaskAssignmentInfoWithTaskInfo) updates) => super.copyWith((message) => updates(message as TaskAssignmentInfoWithTaskInfo)) as TaskAssignmentInfoWithTaskInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskAssignmentInfoWithTaskInfo create() => TaskAssignmentInfoWithTaskInfo._();
  TaskAssignmentInfoWithTaskInfo createEmptyInstance() => create();
  static $pb.PbList<TaskAssignmentInfoWithTaskInfo> createRepeated() => $pb.PbList<TaskAssignmentInfoWithTaskInfo>();
  @$core.pragma('dart2js:noInline')
  static TaskAssignmentInfoWithTaskInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskAssignmentInfoWithTaskInfo>(create);
  static TaskAssignmentInfoWithTaskInfo? _defaultInstance;

  @$pb.TagNumber(1)
  TaskAssignmentInfo get assignmentInfo => $_getN(0);
  @$pb.TagNumber(1)
  set assignmentInfo(TaskAssignmentInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentInfo() => clearField(1);
  @$pb.TagNumber(1)
  TaskAssignmentInfo ensureAssignmentInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.TaskInfo get taskInfo => $_getN(1);
  @$pb.TagNumber(2)
  set taskInfo($2.TaskInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskInfo() => clearField(2);
  @$pb.TagNumber(2)
  $2.TaskInfo ensureTaskInfo() => $_ensure(1);
}

class GetAssignedTasksWithTaskInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAssignedTasksWithTaskInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetAssignedTasksWithTaskInfoRequest._() : super();
  factory GetAssignedTasksWithTaskInfoRequest({
    $fixnum.Int64? profileId,
    $fixnum.Int64? lastFetchAt,
  }) {
    final _result = create();
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (lastFetchAt != null) {
      _result.lastFetchAt = lastFetchAt;
    }
    return _result;
  }
  factory GetAssignedTasksWithTaskInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksWithTaskInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksWithTaskInfoRequest clone() => GetAssignedTasksWithTaskInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksWithTaskInfoRequest copyWith(void Function(GetAssignedTasksWithTaskInfoRequest) updates) => super.copyWith((message) => updates(message as GetAssignedTasksWithTaskInfoRequest)) as GetAssignedTasksWithTaskInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksWithTaskInfoRequest create() => GetAssignedTasksWithTaskInfoRequest._();
  GetAssignedTasksWithTaskInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksWithTaskInfoRequest> createRepeated() => $pb.PbList<GetAssignedTasksWithTaskInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksWithTaskInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksWithTaskInfoRequest>(create);
  static GetAssignedTasksWithTaskInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get profileId => $_getI64(0);
  @$pb.TagNumber(1)
  set profileId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastFetchAt => $_getI64(1);
  @$pb.TagNumber(2)
  set lastFetchAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastFetchAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastFetchAt() => clearField(2);
}

class GetAssignedTasksWithTaskInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAssignedTasksWithTaskInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'taskassignment'), createEmptyInstance: create)
    ..pc<TaskAssignmentInfoWithTaskInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskAssignments', $pb.PbFieldType.PM, protoName: 'taskAssignments', subBuilder: TaskAssignmentInfoWithTaskInfo.create)
    ..hasRequiredFields = false
  ;

  GetAssignedTasksWithTaskInfoResponse._() : super();
  factory GetAssignedTasksWithTaskInfoResponse({
    $core.Iterable<TaskAssignmentInfoWithTaskInfo>? taskAssignments,
  }) {
    final _result = create();
    if (taskAssignments != null) {
      _result.taskAssignments.addAll(taskAssignments);
    }
    return _result;
  }
  factory GetAssignedTasksWithTaskInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksWithTaskInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksWithTaskInfoResponse clone() => GetAssignedTasksWithTaskInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksWithTaskInfoResponse copyWith(void Function(GetAssignedTasksWithTaskInfoResponse) updates) => super.copyWith((message) => updates(message as GetAssignedTasksWithTaskInfoResponse)) as GetAssignedTasksWithTaskInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksWithTaskInfoResponse create() => GetAssignedTasksWithTaskInfoResponse._();
  GetAssignedTasksWithTaskInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksWithTaskInfoResponse> createRepeated() => $pb.PbList<GetAssignedTasksWithTaskInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksWithTaskInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksWithTaskInfoResponse>(create);
  static GetAssignedTasksWithTaskInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskAssignmentInfoWithTaskInfo> get taskAssignments => $_getList(0);
}

