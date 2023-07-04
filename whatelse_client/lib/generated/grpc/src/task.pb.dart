///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CreateTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', protoName: 'parentId')
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelIds', $pb.PbFieldType.K6, protoName: 'channelIds')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inherited')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'periodic')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specLoc', protoName: 'specLoc')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specTime', protoName: 'specTime')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specAtt', protoName: 'specAtt')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  CreateTaskRequest._() : super();
  factory CreateTaskRequest({
    $fixnum.Int64? profileId,
    $fixnum.Int64? parentId,
    $core.Iterable<$fixnum.Int64>? channelIds,
    $core.bool? inherited,
    $core.bool? periodic,
    $core.String? title,
    $core.String? desc,
    $core.String? location,
    $core.String? content,
    $core.bool? specLoc,
    $core.bool? specTime,
    $core.bool? specAtt,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (channelIds != null) {
      _result.channelIds.addAll(channelIds);
    }
    if (inherited != null) {
      _result.inherited = inherited;
    }
    if (periodic != null) {
      _result.periodic = periodic;
    }
    if (title != null) {
      _result.title = title;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (location != null) {
      _result.location = location;
    }
    if (content != null) {
      _result.content = content;
    }
    if (specLoc != null) {
      _result.specLoc = specLoc;
    }
    if (specTime != null) {
      _result.specTime = specTime;
    }
    if (specAtt != null) {
      _result.specAtt = specAtt;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory CreateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskRequest clone() => CreateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskRequest copyWith(void Function(CreateTaskRequest) updates) => super.copyWith((message) => updates(message as CreateTaskRequest)) as CreateTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest create() => CreateTaskRequest._();
  CreateTaskRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTaskRequest> createRepeated() => $pb.PbList<CreateTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskRequest>(create);
  static CreateTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get profileId => $_getI64(0);
  @$pb.TagNumber(1)
  set profileId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get parentId => $_getI64(1);
  @$pb.TagNumber(2)
  set parentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get channelIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get inherited => $_getBF(3);
  @$pb.TagNumber(4)
  set inherited($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInherited() => $_has(3);
  @$pb.TagNumber(4)
  void clearInherited() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get periodic => $_getBF(4);
  @$pb.TagNumber(5)
  set periodic($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeriodic() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeriodic() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(6)
  set title($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTitle() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get desc => $_getSZ(6);
  @$pb.TagNumber(7)
  set desc($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDesc() => $_has(6);
  @$pb.TagNumber(7)
  void clearDesc() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get location => $_getSZ(7);
  @$pb.TagNumber(8)
  set location($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLocation() => $_has(7);
  @$pb.TagNumber(8)
  void clearLocation() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get content => $_getSZ(8);
  @$pb.TagNumber(9)
  set content($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasContent() => $_has(8);
  @$pb.TagNumber(9)
  void clearContent() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get specLoc => $_getBF(9);
  @$pb.TagNumber(10)
  set specLoc($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSpecLoc() => $_has(9);
  @$pb.TagNumber(10)
  void clearSpecLoc() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get specTime => $_getBF(10);
  @$pb.TagNumber(11)
  set specTime($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSpecTime() => $_has(10);
  @$pb.TagNumber(11)
  void clearSpecTime() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get specAtt => $_getBF(11);
  @$pb.TagNumber(12)
  set specAtt($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSpecAtt() => $_has(11);
  @$pb.TagNumber(12)
  void clearSpecAtt() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get updateAt => $_getI64(12);
  @$pb.TagNumber(13)
  set updateAt($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdateAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdateAt() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get deleteAt => $_getI64(13);
  @$pb.TagNumber(14)
  set deleteAt($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDeleteAt() => $_has(13);
  @$pb.TagNumber(14)
  void clearDeleteAt() => clearField(14);
}

class CreateTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..hasRequiredFields = false
  ;

  CreateTaskResponse._() : super();
  factory CreateTaskResponse({
    $fixnum.Int64? taskId,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    return _result;
  }
  factory CreateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskResponse clone() => CreateTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskResponse copyWith(void Function(CreateTaskResponse) updates) => super.copyWith((message) => updates(message as CreateTaskResponse)) as CreateTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTaskResponse create() => CreateTaskResponse._();
  CreateTaskResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTaskResponse> createRepeated() => $pb.PbList<CreateTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskResponse>(create);
  static CreateTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);
}

class TaskInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', protoName: 'parentId')
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelIds', $pb.PbFieldType.K6, protoName: 'channelIds')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inherited')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'periodic')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId', protoName: 'ownerId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specLoc', protoName: 'specLoc')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specTime', protoName: 'specTime')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specAtt', protoName: 'specAtt')
    ..aInt64(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  TaskInfo._() : super();
  factory TaskInfo({
    $fixnum.Int64? taskId,
    $fixnum.Int64? parentId,
    $core.Iterable<$fixnum.Int64>? channelIds,
    $core.bool? inherited,
    $core.bool? periodic,
    $fixnum.Int64? ownerId,
    $core.String? title,
    $core.String? desc,
    $core.String? location,
    $core.String? content,
    $core.bool? specLoc,
    $core.bool? specTime,
    $core.bool? specAtt,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (channelIds != null) {
      _result.channelIds.addAll(channelIds);
    }
    if (inherited != null) {
      _result.inherited = inherited;
    }
    if (periodic != null) {
      _result.periodic = periodic;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (location != null) {
      _result.location = location;
    }
    if (content != null) {
      _result.content = content;
    }
    if (specLoc != null) {
      _result.specLoc = specLoc;
    }
    if (specTime != null) {
      _result.specTime = specTime;
    }
    if (specAtt != null) {
      _result.specAtt = specAtt;
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
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get parentId => $_getI64(1);
  @$pb.TagNumber(2)
  set parentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get channelIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get inherited => $_getBF(3);
  @$pb.TagNumber(4)
  set inherited($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInherited() => $_has(3);
  @$pb.TagNumber(4)
  void clearInherited() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get periodic => $_getBF(4);
  @$pb.TagNumber(5)
  set periodic($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeriodic() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeriodic() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get ownerId => $_getI64(5);
  @$pb.TagNumber(6)
  set ownerId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOwnerId() => $_has(5);
  @$pb.TagNumber(6)
  void clearOwnerId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(6);
  @$pb.TagNumber(7)
  set title($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearTitle() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get desc => $_getSZ(7);
  @$pb.TagNumber(8)
  set desc($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDesc() => $_has(7);
  @$pb.TagNumber(8)
  void clearDesc() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get location => $_getSZ(8);
  @$pb.TagNumber(9)
  set location($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLocation() => $_has(8);
  @$pb.TagNumber(9)
  void clearLocation() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get content => $_getSZ(9);
  @$pb.TagNumber(10)
  set content($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasContent() => $_has(9);
  @$pb.TagNumber(10)
  void clearContent() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get specLoc => $_getBF(10);
  @$pb.TagNumber(11)
  set specLoc($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSpecLoc() => $_has(10);
  @$pb.TagNumber(11)
  void clearSpecLoc() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get specTime => $_getBF(11);
  @$pb.TagNumber(12)
  set specTime($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSpecTime() => $_has(11);
  @$pb.TagNumber(12)
  void clearSpecTime() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get specAtt => $_getBF(12);
  @$pb.TagNumber(13)
  set specAtt($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSpecAtt() => $_has(12);
  @$pb.TagNumber(13)
  void clearSpecAtt() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get updateAt => $_getI64(13);
  @$pb.TagNumber(14)
  set updateAt($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUpdateAt() => $_has(13);
  @$pb.TagNumber(14)
  void clearUpdateAt() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get deleteAt => $_getI64(14);
  @$pb.TagNumber(15)
  set deleteAt($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeleteAt() => $_has(14);
  @$pb.TagNumber(15)
  void clearDeleteAt() => clearField(15);
}

class GetTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..hasRequiredFields = false
  ;

  GetTaskRequest._() : super();
  factory GetTaskRequest({
    $fixnum.Int64? taskId,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    return _result;
  }
  factory GetTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskRequest clone() => GetTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskRequest copyWith(void Function(GetTaskRequest) updates) => super.copyWith((message) => updates(message as GetTaskRequest)) as GetTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest create() => GetTaskRequest._();
  GetTaskRequest createEmptyInstance() => create();
  static $pb.PbList<GetTaskRequest> createRepeated() => $pb.PbList<GetTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskRequest>(create);
  static GetTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);
}

class GetTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', protoName: 'parentId')
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelIds', $pb.PbFieldType.K6, protoName: 'channelIds')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inherited')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'periodic')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId', protoName: 'ownerId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specLoc', protoName: 'specLoc')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specTime', protoName: 'specTime')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specAtt', protoName: 'specAtt')
    ..aInt64(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  GetTaskResponse._() : super();
  factory GetTaskResponse({
    $fixnum.Int64? taskId,
    $fixnum.Int64? parentId,
    $core.Iterable<$fixnum.Int64>? channelIds,
    $core.bool? inherited,
    $core.bool? periodic,
    $fixnum.Int64? ownerId,
    $core.String? title,
    $core.String? desc,
    $core.String? location,
    $core.String? content,
    $core.bool? specLoc,
    $core.bool? specTime,
    $core.bool? specAtt,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (channelIds != null) {
      _result.channelIds.addAll(channelIds);
    }
    if (inherited != null) {
      _result.inherited = inherited;
    }
    if (periodic != null) {
      _result.periodic = periodic;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (location != null) {
      _result.location = location;
    }
    if (content != null) {
      _result.content = content;
    }
    if (specLoc != null) {
      _result.specLoc = specLoc;
    }
    if (specTime != null) {
      _result.specTime = specTime;
    }
    if (specAtt != null) {
      _result.specAtt = specAtt;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory GetTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskResponse clone() => GetTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskResponse copyWith(void Function(GetTaskResponse) updates) => super.copyWith((message) => updates(message as GetTaskResponse)) as GetTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse create() => GetTaskResponse._();
  GetTaskResponse createEmptyInstance() => create();
  static $pb.PbList<GetTaskResponse> createRepeated() => $pb.PbList<GetTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskResponse>(create);
  static GetTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get parentId => $_getI64(1);
  @$pb.TagNumber(2)
  set parentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get channelIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get inherited => $_getBF(3);
  @$pb.TagNumber(4)
  set inherited($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInherited() => $_has(3);
  @$pb.TagNumber(4)
  void clearInherited() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get periodic => $_getBF(4);
  @$pb.TagNumber(5)
  set periodic($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeriodic() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeriodic() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get ownerId => $_getI64(5);
  @$pb.TagNumber(6)
  set ownerId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOwnerId() => $_has(5);
  @$pb.TagNumber(6)
  void clearOwnerId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(6);
  @$pb.TagNumber(7)
  set title($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearTitle() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get desc => $_getSZ(7);
  @$pb.TagNumber(8)
  set desc($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDesc() => $_has(7);
  @$pb.TagNumber(8)
  void clearDesc() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get location => $_getSZ(8);
  @$pb.TagNumber(9)
  set location($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLocation() => $_has(8);
  @$pb.TagNumber(9)
  void clearLocation() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get content => $_getSZ(9);
  @$pb.TagNumber(10)
  set content($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasContent() => $_has(9);
  @$pb.TagNumber(10)
  void clearContent() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get specLoc => $_getBF(10);
  @$pb.TagNumber(11)
  set specLoc($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSpecLoc() => $_has(10);
  @$pb.TagNumber(11)
  void clearSpecLoc() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get specTime => $_getBF(11);
  @$pb.TagNumber(12)
  set specTime($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSpecTime() => $_has(11);
  @$pb.TagNumber(12)
  void clearSpecTime() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get specAtt => $_getBF(12);
  @$pb.TagNumber(13)
  set specAtt($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSpecAtt() => $_has(12);
  @$pb.TagNumber(13)
  void clearSpecAtt() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get updateAt => $_getI64(13);
  @$pb.TagNumber(14)
  set updateAt($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUpdateAt() => $_has(13);
  @$pb.TagNumber(14)
  void clearUpdateAt() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get deleteAt => $_getI64(14);
  @$pb.TagNumber(15)
  set deleteAt($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeleteAt() => $_has(14);
  @$pb.TagNumber(15)
  void clearDeleteAt() => clearField(15);
}

class ModifyTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', protoName: 'parentId')
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelIds', $pb.PbFieldType.K6, protoName: 'channelIds')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inherited')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'periodic')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specLoc', protoName: 'specLoc')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specTime', protoName: 'specTime')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specAtt', protoName: 'specAtt')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ModifyTaskRequest._() : super();
  factory ModifyTaskRequest({
    $fixnum.Int64? taskId,
    $fixnum.Int64? parentId,
    $core.Iterable<$fixnum.Int64>? channelIds,
    $core.bool? inherited,
    $core.bool? periodic,
    $core.String? title,
    $core.String? desc,
    $core.String? location,
    $core.String? content,
    $core.bool? specLoc,
    $core.bool? specTime,
    $core.bool? specAtt,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (channelIds != null) {
      _result.channelIds.addAll(channelIds);
    }
    if (inherited != null) {
      _result.inherited = inherited;
    }
    if (periodic != null) {
      _result.periodic = periodic;
    }
    if (title != null) {
      _result.title = title;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (location != null) {
      _result.location = location;
    }
    if (content != null) {
      _result.content = content;
    }
    if (specLoc != null) {
      _result.specLoc = specLoc;
    }
    if (specTime != null) {
      _result.specTime = specTime;
    }
    if (specAtt != null) {
      _result.specAtt = specAtt;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ModifyTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyTaskRequest clone() => ModifyTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyTaskRequest copyWith(void Function(ModifyTaskRequest) updates) => super.copyWith((message) => updates(message as ModifyTaskRequest)) as ModifyTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyTaskRequest create() => ModifyTaskRequest._();
  ModifyTaskRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyTaskRequest> createRepeated() => $pb.PbList<ModifyTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyTaskRequest>(create);
  static ModifyTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get parentId => $_getI64(1);
  @$pb.TagNumber(2)
  set parentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get channelIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get inherited => $_getBF(3);
  @$pb.TagNumber(4)
  set inherited($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInherited() => $_has(3);
  @$pb.TagNumber(4)
  void clearInherited() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get periodic => $_getBF(4);
  @$pb.TagNumber(5)
  set periodic($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeriodic() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeriodic() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(6)
  set title($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTitle() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get desc => $_getSZ(6);
  @$pb.TagNumber(7)
  set desc($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDesc() => $_has(6);
  @$pb.TagNumber(7)
  void clearDesc() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get location => $_getSZ(7);
  @$pb.TagNumber(8)
  set location($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLocation() => $_has(7);
  @$pb.TagNumber(8)
  void clearLocation() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get content => $_getSZ(8);
  @$pb.TagNumber(9)
  set content($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasContent() => $_has(8);
  @$pb.TagNumber(9)
  void clearContent() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get specLoc => $_getBF(9);
  @$pb.TagNumber(10)
  set specLoc($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSpecLoc() => $_has(9);
  @$pb.TagNumber(10)
  void clearSpecLoc() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get specTime => $_getBF(10);
  @$pb.TagNumber(11)
  set specTime($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSpecTime() => $_has(10);
  @$pb.TagNumber(11)
  void clearSpecTime() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get specAtt => $_getBF(11);
  @$pb.TagNumber(12)
  set specAtt($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSpecAtt() => $_has(11);
  @$pb.TagNumber(12)
  void clearSpecAtt() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get updateAt => $_getI64(12);
  @$pb.TagNumber(13)
  set updateAt($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdateAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdateAt() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get deleteAt => $_getI64(13);
  @$pb.TagNumber(14)
  set deleteAt($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDeleteAt() => $_has(13);
  @$pb.TagNumber(14)
  void clearDeleteAt() => clearField(14);
}

class ModifyTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ModifyTaskResponse._() : super();
  factory ModifyTaskResponse() => create();
  factory ModifyTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyTaskResponse clone() => ModifyTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyTaskResponse copyWith(void Function(ModifyTaskResponse) updates) => super.copyWith((message) => updates(message as ModifyTaskResponse)) as ModifyTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyTaskResponse create() => ModifyTaskResponse._();
  ModifyTaskResponse createEmptyInstance() => create();
  static $pb.PbList<ModifyTaskResponse> createRepeated() => $pb.PbList<ModifyTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifyTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyTaskResponse>(create);
  static ModifyTaskResponse? _defaultInstance;
}

class RemoveTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveTaskRequest._() : super();
  factory RemoveTaskRequest({
    $fixnum.Int64? taskId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveTaskRequest clone() => RemoveTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveTaskRequest copyWith(void Function(RemoveTaskRequest) updates) => super.copyWith((message) => updates(message as RemoveTaskRequest)) as RemoveTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveTaskRequest create() => RemoveTaskRequest._();
  RemoveTaskRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveTaskRequest> createRepeated() => $pb.PbList<RemoveTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveTaskRequest>(create);
  static RemoveTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveTaskResponse._() : super();
  factory RemoveTaskResponse() => create();
  factory RemoveTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveTaskResponse clone() => RemoveTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveTaskResponse copyWith(void Function(RemoveTaskResponse) updates) => super.copyWith((message) => updates(message as RemoveTaskResponse)) as RemoveTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveTaskResponse create() => RemoveTaskResponse._();
  RemoveTaskResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveTaskResponse> createRepeated() => $pb.PbList<RemoveTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveTaskResponse>(create);
  static RemoveTaskResponse? _defaultInstance;
}

class AssetMetaData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetMetaData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  AssetMetaData._() : super();
  factory AssetMetaData({
    $fixnum.Int64? assetId,
    $fixnum.Int64? taskId,
    $core.String? hash,
    $core.String? category,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (assetId != null) {
      _result.assetId = assetId;
    }
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (category != null) {
      _result.category = category;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory AssetMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetMetaData clone() => AssetMetaData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetMetaData copyWith(void Function(AssetMetaData) updates) => super.copyWith((message) => updates(message as AssetMetaData)) as AssetMetaData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetMetaData create() => AssetMetaData._();
  AssetMetaData createEmptyInstance() => create();
  static $pb.PbList<AssetMetaData> createRepeated() => $pb.PbList<AssetMetaData>();
  @$core.pragma('dart2js:noInline')
  static AssetMetaData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetMetaData>(create);
  static AssetMetaData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assetId => $_getI64(0);
  @$pb.TagNumber(1)
  set assetId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get taskId => $_getI64(1);
  @$pb.TagNumber(2)
  set taskId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hash => $_getSZ(2);
  @$pb.TagNumber(3)
  set hash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get category => $_getSZ(3);
  @$pb.TagNumber(4)
  set category($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

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

enum UploadAssetsRequest_Data {
  metaData, 
  chunk, 
  notSet
}

class UploadAssetsRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UploadAssetsRequest_Data> _UploadAssetsRequest_DataByTag = {
    1 : UploadAssetsRequest_Data.metaData,
    2 : UploadAssetsRequest_Data.chunk,
    0 : UploadAssetsRequest_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadAssetsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AssetMetaData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaData', protoName: 'metaData', subBuilder: AssetMetaData.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UploadAssetsRequest._() : super();
  factory UploadAssetsRequest({
    AssetMetaData? metaData,
    $core.List<$core.int>? chunk,
  }) {
    final _result = create();
    if (metaData != null) {
      _result.metaData = metaData;
    }
    if (chunk != null) {
      _result.chunk = chunk;
    }
    return _result;
  }
  factory UploadAssetsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadAssetsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadAssetsRequest clone() => UploadAssetsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadAssetsRequest copyWith(void Function(UploadAssetsRequest) updates) => super.copyWith((message) => updates(message as UploadAssetsRequest)) as UploadAssetsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadAssetsRequest create() => UploadAssetsRequest._();
  UploadAssetsRequest createEmptyInstance() => create();
  static $pb.PbList<UploadAssetsRequest> createRepeated() => $pb.PbList<UploadAssetsRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadAssetsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadAssetsRequest>(create);
  static UploadAssetsRequest? _defaultInstance;

  UploadAssetsRequest_Data whichData() => _UploadAssetsRequest_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AssetMetaData get metaData => $_getN(0);
  @$pb.TagNumber(1)
  set metaData(AssetMetaData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaData() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaData() => clearField(1);
  @$pb.TagNumber(1)
  AssetMetaData ensureMetaData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chunk => $_getN(1);
  @$pb.TagNumber(2)
  set chunk($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunk() => clearField(2);
}

class UploadAssetsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadAssetsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  UploadAssetsResponse._() : super();
  factory UploadAssetsResponse({
    $fixnum.Int64? assetId,
  }) {
    final _result = create();
    if (assetId != null) {
      _result.assetId = assetId;
    }
    return _result;
  }
  factory UploadAssetsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadAssetsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadAssetsResponse clone() => UploadAssetsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadAssetsResponse copyWith(void Function(UploadAssetsResponse) updates) => super.copyWith((message) => updates(message as UploadAssetsResponse)) as UploadAssetsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadAssetsResponse create() => UploadAssetsResponse._();
  UploadAssetsResponse createEmptyInstance() => create();
  static $pb.PbList<UploadAssetsResponse> createRepeated() => $pb.PbList<UploadAssetsResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadAssetsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadAssetsResponse>(create);
  static UploadAssetsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assetId => $_getI64(0);
  @$pb.TagNumber(1)
  set assetId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

class GetAssetsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAssetsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..hasRequiredFields = false
  ;

  GetAssetsRequest._() : super();
  factory GetAssetsRequest({
    $fixnum.Int64? assetId,
  }) {
    final _result = create();
    if (assetId != null) {
      _result.assetId = assetId;
    }
    return _result;
  }
  factory GetAssetsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssetsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssetsRequest clone() => GetAssetsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssetsRequest copyWith(void Function(GetAssetsRequest) updates) => super.copyWith((message) => updates(message as GetAssetsRequest)) as GetAssetsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAssetsRequest create() => GetAssetsRequest._();
  GetAssetsRequest createEmptyInstance() => create();
  static $pb.PbList<GetAssetsRequest> createRepeated() => $pb.PbList<GetAssetsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAssetsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssetsRequest>(create);
  static GetAssetsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assetId => $_getI64(0);
  @$pb.TagNumber(1)
  set assetId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);
}

enum GetAssetsResponse_Data {
  metaData, 
  chunk, 
  notSet
}

class GetAssetsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetAssetsResponse_Data> _GetAssetsResponse_DataByTag = {
    1 : GetAssetsResponse_Data.metaData,
    2 : GetAssetsResponse_Data.chunk,
    0 : GetAssetsResponse_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAssetsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AssetMetaData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaData', protoName: 'metaData', subBuilder: AssetMetaData.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetAssetsResponse._() : super();
  factory GetAssetsResponse({
    AssetMetaData? metaData,
    $core.List<$core.int>? chunk,
  }) {
    final _result = create();
    if (metaData != null) {
      _result.metaData = metaData;
    }
    if (chunk != null) {
      _result.chunk = chunk;
    }
    return _result;
  }
  factory GetAssetsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssetsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssetsResponse clone() => GetAssetsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssetsResponse copyWith(void Function(GetAssetsResponse) updates) => super.copyWith((message) => updates(message as GetAssetsResponse)) as GetAssetsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAssetsResponse create() => GetAssetsResponse._();
  GetAssetsResponse createEmptyInstance() => create();
  static $pb.PbList<GetAssetsResponse> createRepeated() => $pb.PbList<GetAssetsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAssetsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssetsResponse>(create);
  static GetAssetsResponse? _defaultInstance;

  GetAssetsResponse_Data whichData() => _GetAssetsResponse_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AssetMetaData get metaData => $_getN(0);
  @$pb.TagNumber(1)
  set metaData(AssetMetaData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaData() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaData() => clearField(1);
  @$pb.TagNumber(1)
  AssetMetaData ensureMetaData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chunk => $_getN(1);
  @$pb.TagNumber(2)
  set chunk($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunk() => clearField(2);
}

class RemoveAssetsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveAssetsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetId', protoName: 'assetId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveAssetsRequest._() : super();
  factory RemoveAssetsRequest({
    $fixnum.Int64? assetId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (assetId != null) {
      _result.assetId = assetId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveAssetsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveAssetsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveAssetsRequest clone() => RemoveAssetsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveAssetsRequest copyWith(void Function(RemoveAssetsRequest) updates) => super.copyWith((message) => updates(message as RemoveAssetsRequest)) as RemoveAssetsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveAssetsRequest create() => RemoveAssetsRequest._();
  RemoveAssetsRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveAssetsRequest> createRepeated() => $pb.PbList<RemoveAssetsRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveAssetsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveAssetsRequest>(create);
  static RemoveAssetsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assetId => $_getI64(0);
  @$pb.TagNumber(1)
  set assetId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveAssetsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveAssetsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveAssetsResponse._() : super();
  factory RemoveAssetsResponse() => create();
  factory RemoveAssetsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveAssetsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveAssetsResponse clone() => RemoveAssetsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveAssetsResponse copyWith(void Function(RemoveAssetsResponse) updates) => super.copyWith((message) => updates(message as RemoveAssetsResponse)) as RemoveAssetsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveAssetsResponse create() => RemoveAssetsResponse._();
  RemoveAssetsResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveAssetsResponse> createRepeated() => $pb.PbList<RemoveAssetsResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveAssetsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveAssetsResponse>(create);
  static RemoveAssetsResponse? _defaultInstance;
}

