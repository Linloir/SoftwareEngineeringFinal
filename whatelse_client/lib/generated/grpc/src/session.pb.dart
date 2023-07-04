///
//  Generated code. Do not modify.
//  source: session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CreateSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', protoName: 'parentId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cycle', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dupCount', $pb.PbFieldType.O3, protoName: 'dupCount')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  CreateSessionRequest._() : super();
  factory CreateSessionRequest({
    $fixnum.Int64? parentId,
    $fixnum.Int64? taskId,
    $fixnum.Int64? start,
    $fixnum.Int64? end,
    $core.int? cycle,
    $core.int? dupCount,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    if (cycle != null) {
      _result.cycle = cycle;
    }
    if (dupCount != null) {
      _result.dupCount = dupCount;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory CreateSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionRequest clone() => CreateSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionRequest copyWith(void Function(CreateSessionRequest) updates) => super.copyWith((message) => updates(message as CreateSessionRequest)) as CreateSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest create() => CreateSessionRequest._();
  CreateSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSessionRequest> createRepeated() => $pb.PbList<CreateSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionRequest>(create);
  static CreateSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get parentId => $_getI64(0);
  @$pb.TagNumber(1)
  set parentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get taskId => $_getI64(1);
  @$pb.TagNumber(2)
  set taskId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get start => $_getI64(2);
  @$pb.TagNumber(3)
  set start($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearStart() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get end => $_getI64(3);
  @$pb.TagNumber(4)
  set end($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnd() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cycle => $_getIZ(4);
  @$pb.TagNumber(5)
  set cycle($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCycle() => $_has(4);
  @$pb.TagNumber(5)
  void clearCycle() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get dupCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set dupCount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDupCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearDupCount() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updateAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updateAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdateAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateAt() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get deleteAt => $_getI64(7);
  @$pb.TagNumber(8)
  set deleteAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeleteAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeleteAt() => clearField(8);
}

class CreateSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSessionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..hasRequiredFields = false
  ;

  CreateSessionResponse._() : super();
  factory CreateSessionResponse({
    $fixnum.Int64? sessionId,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    return _result;
  }
  factory CreateSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionResponse clone() => CreateSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionResponse copyWith(void Function(CreateSessionResponse) updates) => super.copyWith((message) => updates(message as CreateSessionResponse)) as CreateSessionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse create() => CreateSessionResponse._();
  CreateSessionResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSessionResponse> createRepeated() => $pb.PbList<CreateSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionResponse>(create);
  static CreateSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class ModifySessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifySessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', protoName: 'parentId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cycle', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dupCount', $pb.PbFieldType.O3, protoName: 'dupCount')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ModifySessionRequest._() : super();
  factory ModifySessionRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? parentId,
    $fixnum.Int64? start,
    $fixnum.Int64? end,
    $core.int? cycle,
    $core.int? dupCount,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    if (cycle != null) {
      _result.cycle = cycle;
    }
    if (dupCount != null) {
      _result.dupCount = dupCount;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ModifySessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifySessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifySessionRequest clone() => ModifySessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifySessionRequest copyWith(void Function(ModifySessionRequest) updates) => super.copyWith((message) => updates(message as ModifySessionRequest)) as ModifySessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifySessionRequest create() => ModifySessionRequest._();
  ModifySessionRequest createEmptyInstance() => create();
  static $pb.PbList<ModifySessionRequest> createRepeated() => $pb.PbList<ModifySessionRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifySessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifySessionRequest>(create);
  static ModifySessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get parentId => $_getI64(1);
  @$pb.TagNumber(2)
  set parentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get start => $_getI64(2);
  @$pb.TagNumber(3)
  set start($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearStart() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get end => $_getI64(3);
  @$pb.TagNumber(4)
  set end($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnd() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cycle => $_getIZ(4);
  @$pb.TagNumber(5)
  set cycle($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCycle() => $_has(4);
  @$pb.TagNumber(5)
  void clearCycle() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get dupCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set dupCount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDupCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearDupCount() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updateAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updateAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdateAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateAt() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get deleteAt => $_getI64(7);
  @$pb.TagNumber(8)
  set deleteAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeleteAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeleteAt() => clearField(8);
}

class ModifySessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifySessionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ModifySessionResponse._() : super();
  factory ModifySessionResponse() => create();
  factory ModifySessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifySessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifySessionResponse clone() => ModifySessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifySessionResponse copyWith(void Function(ModifySessionResponse) updates) => super.copyWith((message) => updates(message as ModifySessionResponse)) as ModifySessionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifySessionResponse create() => ModifySessionResponse._();
  ModifySessionResponse createEmptyInstance() => create();
  static $pb.PbList<ModifySessionResponse> createRepeated() => $pb.PbList<ModifySessionResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifySessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifySessionResponse>(create);
  static ModifySessionResponse? _defaultInstance;
}

class GetSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..hasRequiredFields = false
  ;

  GetSessionRequest._() : super();
  factory GetSessionRequest({
    $fixnum.Int64? sessionId,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    return _result;
  }
  factory GetSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionRequest clone() => GetSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionRequest copyWith(void Function(GetSessionRequest) updates) => super.copyWith((message) => updates(message as GetSessionRequest)) as GetSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSessionRequest create() => GetSessionRequest._();
  GetSessionRequest createEmptyInstance() => create();
  static $pb.PbList<GetSessionRequest> createRepeated() => $pb.PbList<GetSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionRequest>(create);
  static GetSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class GetSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSessionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', protoName: 'parentId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cycle', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dupCount', $pb.PbFieldType.O3, protoName: 'dupCount')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  GetSessionResponse._() : super();
  factory GetSessionResponse({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? parentId,
    $fixnum.Int64? taskId,
    $fixnum.Int64? start,
    $fixnum.Int64? end,
    $core.int? cycle,
    $core.int? dupCount,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    if (cycle != null) {
      _result.cycle = cycle;
    }
    if (dupCount != null) {
      _result.dupCount = dupCount;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory GetSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionResponse clone() => GetSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionResponse copyWith(void Function(GetSessionResponse) updates) => super.copyWith((message) => updates(message as GetSessionResponse)) as GetSessionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSessionResponse create() => GetSessionResponse._();
  GetSessionResponse createEmptyInstance() => create();
  static $pb.PbList<GetSessionResponse> createRepeated() => $pb.PbList<GetSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionResponse>(create);
  static GetSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get parentId => $_getI64(1);
  @$pb.TagNumber(2)
  set parentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get taskId => $_getI64(2);
  @$pb.TagNumber(3)
  set taskId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTaskId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTaskId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get start => $_getI64(3);
  @$pb.TagNumber(4)
  set start($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStart() => $_has(3);
  @$pb.TagNumber(4)
  void clearStart() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get end => $_getI64(4);
  @$pb.TagNumber(5)
  set end($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnd() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get cycle => $_getIZ(5);
  @$pb.TagNumber(6)
  set cycle($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCycle() => $_has(5);
  @$pb.TagNumber(6)
  void clearCycle() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get dupCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set dupCount($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDupCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearDupCount() => clearField(7);

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

class SessionInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SessionInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', protoName: 'parentId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cycle', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dupCount', $pb.PbFieldType.O3, protoName: 'dupCount')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  SessionInfo._() : super();
  factory SessionInfo({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? parentId,
    $fixnum.Int64? taskId,
    $fixnum.Int64? start,
    $fixnum.Int64? end,
    $core.int? cycle,
    $core.int? dupCount,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    if (cycle != null) {
      _result.cycle = cycle;
    }
    if (dupCount != null) {
      _result.dupCount = dupCount;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory SessionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionInfo clone() => SessionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionInfo copyWith(void Function(SessionInfo) updates) => super.copyWith((message) => updates(message as SessionInfo)) as SessionInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SessionInfo create() => SessionInfo._();
  SessionInfo createEmptyInstance() => create();
  static $pb.PbList<SessionInfo> createRepeated() => $pb.PbList<SessionInfo>();
  @$core.pragma('dart2js:noInline')
  static SessionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionInfo>(create);
  static SessionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get parentId => $_getI64(1);
  @$pb.TagNumber(2)
  set parentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get taskId => $_getI64(2);
  @$pb.TagNumber(3)
  set taskId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTaskId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTaskId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get start => $_getI64(3);
  @$pb.TagNumber(4)
  set start($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStart() => $_has(3);
  @$pb.TagNumber(4)
  void clearStart() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get end => $_getI64(4);
  @$pb.TagNumber(5)
  set end($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnd() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get cycle => $_getIZ(5);
  @$pb.TagNumber(6)
  set cycle($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCycle() => $_has(5);
  @$pb.TagNumber(6)
  void clearCycle() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get dupCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set dupCount($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDupCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearDupCount() => clearField(7);

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

class GetSessionListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSessionListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetSessionListRequest._() : super();
  factory GetSessionListRequest({
    $fixnum.Int64? taskId,
    $fixnum.Int64? lastFetchAt,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (lastFetchAt != null) {
      _result.lastFetchAt = lastFetchAt;
    }
    return _result;
  }
  factory GetSessionListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionListRequest clone() => GetSessionListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionListRequest copyWith(void Function(GetSessionListRequest) updates) => super.copyWith((message) => updates(message as GetSessionListRequest)) as GetSessionListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSessionListRequest create() => GetSessionListRequest._();
  GetSessionListRequest createEmptyInstance() => create();
  static $pb.PbList<GetSessionListRequest> createRepeated() => $pb.PbList<GetSessionListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSessionListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionListRequest>(create);
  static GetSessionListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastFetchAt => $_getI64(1);
  @$pb.TagNumber(2)
  set lastFetchAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastFetchAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastFetchAt() => clearField(2);
}

class GetSessionListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSessionListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..pc<SessionInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionList', $pb.PbFieldType.PM, protoName: 'sessionList', subBuilder: SessionInfo.create)
    ..hasRequiredFields = false
  ;

  GetSessionListResponse._() : super();
  factory GetSessionListResponse({
    $core.Iterable<SessionInfo>? sessionList,
  }) {
    final _result = create();
    if (sessionList != null) {
      _result.sessionList.addAll(sessionList);
    }
    return _result;
  }
  factory GetSessionListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionListResponse clone() => GetSessionListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionListResponse copyWith(void Function(GetSessionListResponse) updates) => super.copyWith((message) => updates(message as GetSessionListResponse)) as GetSessionListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSessionListResponse create() => GetSessionListResponse._();
  GetSessionListResponse createEmptyInstance() => create();
  static $pb.PbList<GetSessionListResponse> createRepeated() => $pb.PbList<GetSessionListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSessionListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionListResponse>(create);
  static GetSessionListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SessionInfo> get sessionList => $_getList(0);
}

class RemoveSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveSessionRequest._() : super();
  factory RemoveSessionRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSessionRequest clone() => RemoveSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSessionRequest copyWith(void Function(RemoveSessionRequest) updates) => super.copyWith((message) => updates(message as RemoveSessionRequest)) as RemoveSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveSessionRequest create() => RemoveSessionRequest._();
  RemoveSessionRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveSessionRequest> createRepeated() => $pb.PbList<RemoveSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSessionRequest>(create);
  static RemoveSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveSessionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveSessionResponse._() : super();
  factory RemoveSessionResponse() => create();
  factory RemoveSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSessionResponse clone() => RemoveSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSessionResponse copyWith(void Function(RemoveSessionResponse) updates) => super.copyWith((message) => updates(message as RemoveSessionResponse)) as RemoveSessionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveSessionResponse create() => RemoveSessionResponse._();
  RemoveSessionResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveSessionResponse> createRepeated() => $pb.PbList<RemoveSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSessionResponse>(create);
  static RemoveSessionResponse? _defaultInstance;
}

class AttachmentMetaData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AttachmentMetaData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachmentId', protoName: 'attachmentId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordId', protoName: 'recordId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  AttachmentMetaData._() : super();
  factory AttachmentMetaData({
    $fixnum.Int64? attachmentId,
    $fixnum.Int64? recordId,
    $core.String? hash,
    $core.String? name,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (attachmentId != null) {
      _result.attachmentId = attachmentId;
    }
    if (recordId != null) {
      _result.recordId = recordId;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (name != null) {
      _result.name = name;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory AttachmentMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachmentMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttachmentMetaData clone() => AttachmentMetaData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttachmentMetaData copyWith(void Function(AttachmentMetaData) updates) => super.copyWith((message) => updates(message as AttachmentMetaData)) as AttachmentMetaData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AttachmentMetaData create() => AttachmentMetaData._();
  AttachmentMetaData createEmptyInstance() => create();
  static $pb.PbList<AttachmentMetaData> createRepeated() => $pb.PbList<AttachmentMetaData>();
  @$core.pragma('dart2js:noInline')
  static AttachmentMetaData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttachmentMetaData>(create);
  static AttachmentMetaData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get attachmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set attachmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttachmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttachmentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get recordId => $_getI64(1);
  @$pb.TagNumber(2)
  set recordId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecordId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecordId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hash => $_getSZ(2);
  @$pb.TagNumber(3)
  set hash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

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

enum UploadAttachmentRequest_Data {
  metaData, 
  chunk, 
  notSet
}

class UploadAttachmentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UploadAttachmentRequest_Data> _UploadAttachmentRequest_DataByTag = {
    1 : UploadAttachmentRequest_Data.metaData,
    2 : UploadAttachmentRequest_Data.chunk,
    0 : UploadAttachmentRequest_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadAttachmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AttachmentMetaData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaData', protoName: 'metaData', subBuilder: AttachmentMetaData.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UploadAttachmentRequest._() : super();
  factory UploadAttachmentRequest({
    AttachmentMetaData? metaData,
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
  factory UploadAttachmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadAttachmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadAttachmentRequest clone() => UploadAttachmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadAttachmentRequest copyWith(void Function(UploadAttachmentRequest) updates) => super.copyWith((message) => updates(message as UploadAttachmentRequest)) as UploadAttachmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadAttachmentRequest create() => UploadAttachmentRequest._();
  UploadAttachmentRequest createEmptyInstance() => create();
  static $pb.PbList<UploadAttachmentRequest> createRepeated() => $pb.PbList<UploadAttachmentRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadAttachmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadAttachmentRequest>(create);
  static UploadAttachmentRequest? _defaultInstance;

  UploadAttachmentRequest_Data whichData() => _UploadAttachmentRequest_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AttachmentMetaData get metaData => $_getN(0);
  @$pb.TagNumber(1)
  set metaData(AttachmentMetaData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaData() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaData() => clearField(1);
  @$pb.TagNumber(1)
  AttachmentMetaData ensureMetaData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chunk => $_getN(1);
  @$pb.TagNumber(2)
  set chunk($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunk() => clearField(2);
}

class UploadAttachmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadAttachmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachmentId', protoName: 'attachmentId')
    ..hasRequiredFields = false
  ;

  UploadAttachmentResponse._() : super();
  factory UploadAttachmentResponse({
    $fixnum.Int64? attachmentId,
  }) {
    final _result = create();
    if (attachmentId != null) {
      _result.attachmentId = attachmentId;
    }
    return _result;
  }
  factory UploadAttachmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadAttachmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadAttachmentResponse clone() => UploadAttachmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadAttachmentResponse copyWith(void Function(UploadAttachmentResponse) updates) => super.copyWith((message) => updates(message as UploadAttachmentResponse)) as UploadAttachmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadAttachmentResponse create() => UploadAttachmentResponse._();
  UploadAttachmentResponse createEmptyInstance() => create();
  static $pb.PbList<UploadAttachmentResponse> createRepeated() => $pb.PbList<UploadAttachmentResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadAttachmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadAttachmentResponse>(create);
  static UploadAttachmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get attachmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set attachmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttachmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttachmentId() => clearField(1);
}

class GetAttachmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAttachmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachmentId', protoName: 'attachmentId')
    ..hasRequiredFields = false
  ;

  GetAttachmentRequest._() : super();
  factory GetAttachmentRequest({
    $fixnum.Int64? attachmentId,
  }) {
    final _result = create();
    if (attachmentId != null) {
      _result.attachmentId = attachmentId;
    }
    return _result;
  }
  factory GetAttachmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAttachmentRequest clone() => GetAttachmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAttachmentRequest copyWith(void Function(GetAttachmentRequest) updates) => super.copyWith((message) => updates(message as GetAttachmentRequest)) as GetAttachmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAttachmentRequest create() => GetAttachmentRequest._();
  GetAttachmentRequest createEmptyInstance() => create();
  static $pb.PbList<GetAttachmentRequest> createRepeated() => $pb.PbList<GetAttachmentRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAttachmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachmentRequest>(create);
  static GetAttachmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get attachmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set attachmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttachmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttachmentId() => clearField(1);
}

enum GetAttachmentResponse_Data {
  metaData, 
  chunk, 
  notSet
}

class GetAttachmentResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetAttachmentResponse_Data> _GetAttachmentResponse_DataByTag = {
    1 : GetAttachmentResponse_Data.metaData,
    2 : GetAttachmentResponse_Data.chunk,
    0 : GetAttachmentResponse_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAttachmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AttachmentMetaData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaData', protoName: 'metaData', subBuilder: AttachmentMetaData.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetAttachmentResponse._() : super();
  factory GetAttachmentResponse({
    AttachmentMetaData? metaData,
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
  factory GetAttachmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAttachmentResponse clone() => GetAttachmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAttachmentResponse copyWith(void Function(GetAttachmentResponse) updates) => super.copyWith((message) => updates(message as GetAttachmentResponse)) as GetAttachmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAttachmentResponse create() => GetAttachmentResponse._();
  GetAttachmentResponse createEmptyInstance() => create();
  static $pb.PbList<GetAttachmentResponse> createRepeated() => $pb.PbList<GetAttachmentResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAttachmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachmentResponse>(create);
  static GetAttachmentResponse? _defaultInstance;

  GetAttachmentResponse_Data whichData() => _GetAttachmentResponse_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AttachmentMetaData get metaData => $_getN(0);
  @$pb.TagNumber(1)
  set metaData(AttachmentMetaData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaData() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaData() => clearField(1);
  @$pb.TagNumber(1)
  AttachmentMetaData ensureMetaData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chunk => $_getN(1);
  @$pb.TagNumber(2)
  set chunk($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunk() => clearField(2);
}

class RemoveAttachmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveAttachmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachmentId', protoName: 'attachmentId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveAttachmentRequest._() : super();
  factory RemoveAttachmentRequest({
    $fixnum.Int64? attachmentId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (attachmentId != null) {
      _result.attachmentId = attachmentId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveAttachmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveAttachmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveAttachmentRequest clone() => RemoveAttachmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveAttachmentRequest copyWith(void Function(RemoveAttachmentRequest) updates) => super.copyWith((message) => updates(message as RemoveAttachmentRequest)) as RemoveAttachmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveAttachmentRequest create() => RemoveAttachmentRequest._();
  RemoveAttachmentRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveAttachmentRequest> createRepeated() => $pb.PbList<RemoveAttachmentRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveAttachmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveAttachmentRequest>(create);
  static RemoveAttachmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get attachmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set attachmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttachmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttachmentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveAttachmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveAttachmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveAttachmentResponse._() : super();
  factory RemoveAttachmentResponse() => create();
  factory RemoveAttachmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveAttachmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveAttachmentResponse clone() => RemoveAttachmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveAttachmentResponse copyWith(void Function(RemoveAttachmentResponse) updates) => super.copyWith((message) => updates(message as RemoveAttachmentResponse)) as RemoveAttachmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveAttachmentResponse create() => RemoveAttachmentResponse._();
  RemoveAttachmentResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveAttachmentResponse> createRepeated() => $pb.PbList<RemoveAttachmentResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveAttachmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveAttachmentResponse>(create);
  static RemoveAttachmentResponse? _defaultInstance;
}

class CreateRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dupIndex', $pb.PbFieldType.O3, protoName: 'dupIndex')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskDue', protoName: 'taskDue')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  CreateRecordRequest._() : super();
  factory CreateRecordRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? time,
    $core.int? dupIndex,
    $fixnum.Int64? taskDue,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (time != null) {
      _result.time = time;
    }
    if (dupIndex != null) {
      _result.dupIndex = dupIndex;
    }
    if (taskDue != null) {
      _result.taskDue = taskDue;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory CreateRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRecordRequest clone() => CreateRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRecordRequest copyWith(void Function(CreateRecordRequest) updates) => super.copyWith((message) => updates(message as CreateRecordRequest)) as CreateRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRecordRequest create() => CreateRecordRequest._();
  CreateRecordRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRecordRequest> createRepeated() => $pb.PbList<CreateRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRecordRequest>(create);
  static CreateRecordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get profileId => $_getI64(1);
  @$pb.TagNumber(2)
  set profileId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get dupIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set dupIndex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDupIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearDupIndex() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get taskDue => $_getI64(4);
  @$pb.TagNumber(5)
  set taskDue($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTaskDue() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskDue() => clearField(5);

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

class CreateRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordId', protoName: 'recordId')
    ..hasRequiredFields = false
  ;

  CreateRecordResponse._() : super();
  factory CreateRecordResponse({
    $fixnum.Int64? recordId,
  }) {
    final _result = create();
    if (recordId != null) {
      _result.recordId = recordId;
    }
    return _result;
  }
  factory CreateRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRecordResponse clone() => CreateRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRecordResponse copyWith(void Function(CreateRecordResponse) updates) => super.copyWith((message) => updates(message as CreateRecordResponse)) as CreateRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRecordResponse create() => CreateRecordResponse._();
  CreateRecordResponse createEmptyInstance() => create();
  static $pb.PbList<CreateRecordResponse> createRepeated() => $pb.PbList<CreateRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRecordResponse>(create);
  static CreateRecordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get recordId => $_getI64(0);
  @$pb.TagNumber(1)
  set recordId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordId() => clearField(1);
}

class GetRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordId', protoName: 'recordId')
    ..hasRequiredFields = false
  ;

  GetRecordRequest._() : super();
  factory GetRecordRequest({
    $fixnum.Int64? recordId,
  }) {
    final _result = create();
    if (recordId != null) {
      _result.recordId = recordId;
    }
    return _result;
  }
  factory GetRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecordRequest clone() => GetRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecordRequest copyWith(void Function(GetRecordRequest) updates) => super.copyWith((message) => updates(message as GetRecordRequest)) as GetRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecordRequest create() => GetRecordRequest._();
  GetRecordRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecordRequest> createRepeated() => $pb.PbList<GetRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecordRequest>(create);
  static GetRecordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get recordId => $_getI64(0);
  @$pb.TagNumber(1)
  set recordId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordId() => clearField(1);
}

class GetRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordId', protoName: 'recordId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dupIndex', $pb.PbFieldType.O3, protoName: 'dupIndex')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskDue', protoName: 'taskDue')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  GetRecordResponse._() : super();
  factory GetRecordResponse({
    $fixnum.Int64? recordId,
    $fixnum.Int64? sessionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? time,
    $core.int? dupIndex,
    $fixnum.Int64? taskDue,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (recordId != null) {
      _result.recordId = recordId;
    }
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (time != null) {
      _result.time = time;
    }
    if (dupIndex != null) {
      _result.dupIndex = dupIndex;
    }
    if (taskDue != null) {
      _result.taskDue = taskDue;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory GetRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecordResponse clone() => GetRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecordResponse copyWith(void Function(GetRecordResponse) updates) => super.copyWith((message) => updates(message as GetRecordResponse)) as GetRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecordResponse create() => GetRecordResponse._();
  GetRecordResponse createEmptyInstance() => create();
  static $pb.PbList<GetRecordResponse> createRepeated() => $pb.PbList<GetRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecordResponse>(create);
  static GetRecordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get recordId => $_getI64(0);
  @$pb.TagNumber(1)
  set recordId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sessionId => $_getI64(1);
  @$pb.TagNumber(2)
  set sessionId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get profileId => $_getI64(2);
  @$pb.TagNumber(3)
  set profileId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfileId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfileId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get time => $_getI64(3);
  @$pb.TagNumber(4)
  set time($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get dupIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set dupIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDupIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearDupIndex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get taskDue => $_getI64(5);
  @$pb.TagNumber(6)
  set taskDue($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTaskDue() => $_has(5);
  @$pb.TagNumber(6)
  void clearTaskDue() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updateAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updateAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdateAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateAt() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get deleteAt => $_getI64(7);
  @$pb.TagNumber(8)
  set deleteAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeleteAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeleteAt() => clearField(8);
}

class ModifyRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordId', protoName: 'recordId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dupIndex', $pb.PbFieldType.O3, protoName: 'dupIndex')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskDue', protoName: 'taskDue')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ModifyRecordRequest._() : super();
  factory ModifyRecordRequest({
    $fixnum.Int64? recordId,
    $fixnum.Int64? time,
    $core.int? dupIndex,
    $fixnum.Int64? taskDue,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (recordId != null) {
      _result.recordId = recordId;
    }
    if (time != null) {
      _result.time = time;
    }
    if (dupIndex != null) {
      _result.dupIndex = dupIndex;
    }
    if (taskDue != null) {
      _result.taskDue = taskDue;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ModifyRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyRecordRequest clone() => ModifyRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyRecordRequest copyWith(void Function(ModifyRecordRequest) updates) => super.copyWith((message) => updates(message as ModifyRecordRequest)) as ModifyRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyRecordRequest create() => ModifyRecordRequest._();
  ModifyRecordRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyRecordRequest> createRepeated() => $pb.PbList<ModifyRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyRecordRequest>(create);
  static ModifyRecordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get recordId => $_getI64(0);
  @$pb.TagNumber(1)
  set recordId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get time => $_getI64(1);
  @$pb.TagNumber(2)
  set time($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get dupIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set dupIndex($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDupIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearDupIndex() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get taskDue => $_getI64(3);
  @$pb.TagNumber(4)
  set taskDue($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTaskDue() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskDue() => clearField(4);

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

class ModifyRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ModifyRecordResponse._() : super();
  factory ModifyRecordResponse() => create();
  factory ModifyRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyRecordResponse clone() => ModifyRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyRecordResponse copyWith(void Function(ModifyRecordResponse) updates) => super.copyWith((message) => updates(message as ModifyRecordResponse)) as ModifyRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyRecordResponse create() => ModifyRecordResponse._();
  ModifyRecordResponse createEmptyInstance() => create();
  static $pb.PbList<ModifyRecordResponse> createRepeated() => $pb.PbList<ModifyRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifyRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyRecordResponse>(create);
  static ModifyRecordResponse? _defaultInstance;
}

class RecordInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordId', protoName: 'recordId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dupIndex', $pb.PbFieldType.O3, protoName: 'dupIndex')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskDue', protoName: 'taskDue')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RecordInfo._() : super();
  factory RecordInfo({
    $fixnum.Int64? recordId,
    $fixnum.Int64? sessionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? time,
    $core.int? dupIndex,
    $fixnum.Int64? taskDue,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (recordId != null) {
      _result.recordId = recordId;
    }
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (time != null) {
      _result.time = time;
    }
    if (dupIndex != null) {
      _result.dupIndex = dupIndex;
    }
    if (taskDue != null) {
      _result.taskDue = taskDue;
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
  $fixnum.Int64 get recordId => $_getI64(0);
  @$pb.TagNumber(1)
  set recordId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sessionId => $_getI64(1);
  @$pb.TagNumber(2)
  set sessionId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get profileId => $_getI64(2);
  @$pb.TagNumber(3)
  set profileId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfileId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfileId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get time => $_getI64(3);
  @$pb.TagNumber(4)
  set time($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get dupIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set dupIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDupIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearDupIndex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get taskDue => $_getI64(5);
  @$pb.TagNumber(6)
  set taskDue($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTaskDue() => $_has(5);
  @$pb.TagNumber(6)
  void clearTaskDue() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updateAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updateAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdateAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateAt() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get deleteAt => $_getI64(7);
  @$pb.TagNumber(8)
  set deleteAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeleteAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeleteAt() => clearField(8);
}

class GetRecordListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecordListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetRecordListRequest._() : super();
  factory GetRecordListRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? lastFetchAt,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (lastFetchAt != null) {
      _result.lastFetchAt = lastFetchAt;
    }
    return _result;
  }
  factory GetRecordListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecordListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecordListRequest clone() => GetRecordListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecordListRequest copyWith(void Function(GetRecordListRequest) updates) => super.copyWith((message) => updates(message as GetRecordListRequest)) as GetRecordListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecordListRequest create() => GetRecordListRequest._();
  GetRecordListRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecordListRequest> createRepeated() => $pb.PbList<GetRecordListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecordListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecordListRequest>(create);
  static GetRecordListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get profileId => $_getI64(1);
  @$pb.TagNumber(2)
  set profileId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastFetchAt => $_getI64(2);
  @$pb.TagNumber(3)
  set lastFetchAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastFetchAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastFetchAt() => clearField(3);
}

class GetRecordListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecordListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..pc<RecordInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordList', $pb.PbFieldType.PM, protoName: 'recordList', subBuilder: RecordInfo.create)
    ..hasRequiredFields = false
  ;

  GetRecordListResponse._() : super();
  factory GetRecordListResponse({
    $core.Iterable<RecordInfo>? recordList,
  }) {
    final _result = create();
    if (recordList != null) {
      _result.recordList.addAll(recordList);
    }
    return _result;
  }
  factory GetRecordListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecordListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecordListResponse clone() => GetRecordListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecordListResponse copyWith(void Function(GetRecordListResponse) updates) => super.copyWith((message) => updates(message as GetRecordListResponse)) as GetRecordListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecordListResponse create() => GetRecordListResponse._();
  GetRecordListResponse createEmptyInstance() => create();
  static $pb.PbList<GetRecordListResponse> createRepeated() => $pb.PbList<GetRecordListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRecordListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecordListResponse>(create);
  static GetRecordListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RecordInfo> get recordList => $_getList(0);
}

class TaskRecordInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskRecordInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..pc<RecordInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordList', $pb.PbFieldType.PM, protoName: 'recordList', subBuilder: RecordInfo.create)
    ..hasRequiredFields = false
  ;

  TaskRecordInfo._() : super();
  factory TaskRecordInfo({
    $fixnum.Int64? sessionId,
    $core.Iterable<RecordInfo>? recordList,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (recordList != null) {
      _result.recordList.addAll(recordList);
    }
    return _result;
  }
  factory TaskRecordInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskRecordInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskRecordInfo clone() => TaskRecordInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskRecordInfo copyWith(void Function(TaskRecordInfo) updates) => super.copyWith((message) => updates(message as TaskRecordInfo)) as TaskRecordInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskRecordInfo create() => TaskRecordInfo._();
  TaskRecordInfo createEmptyInstance() => create();
  static $pb.PbList<TaskRecordInfo> createRepeated() => $pb.PbList<TaskRecordInfo>();
  @$core.pragma('dart2js:noInline')
  static TaskRecordInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskRecordInfo>(create);
  static TaskRecordInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<RecordInfo> get recordList => $_getList(1);
}

class GetTaskRecordListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskRecordListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetTaskRecordListRequest._() : super();
  factory GetTaskRecordListRequest({
    $fixnum.Int64? taskId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? lastFetchAt,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (lastFetchAt != null) {
      _result.lastFetchAt = lastFetchAt;
    }
    return _result;
  }
  factory GetTaskRecordListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskRecordListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskRecordListRequest clone() => GetTaskRecordListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskRecordListRequest copyWith(void Function(GetTaskRecordListRequest) updates) => super.copyWith((message) => updates(message as GetTaskRecordListRequest)) as GetTaskRecordListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskRecordListRequest create() => GetTaskRecordListRequest._();
  GetTaskRecordListRequest createEmptyInstance() => create();
  static $pb.PbList<GetTaskRecordListRequest> createRepeated() => $pb.PbList<GetTaskRecordListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTaskRecordListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskRecordListRequest>(create);
  static GetTaskRecordListRequest? _defaultInstance;

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
  $fixnum.Int64 get lastFetchAt => $_getI64(2);
  @$pb.TagNumber(3)
  set lastFetchAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastFetchAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastFetchAt() => clearField(3);
}

class GetTaskRecordListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskRecordListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..pc<TaskRecordInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionList', $pb.PbFieldType.PM, protoName: 'sessionList', subBuilder: TaskRecordInfo.create)
    ..hasRequiredFields = false
  ;

  GetTaskRecordListResponse._() : super();
  factory GetTaskRecordListResponse({
    $core.Iterable<TaskRecordInfo>? sessionList,
  }) {
    final _result = create();
    if (sessionList != null) {
      _result.sessionList.addAll(sessionList);
    }
    return _result;
  }
  factory GetTaskRecordListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskRecordListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskRecordListResponse clone() => GetTaskRecordListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskRecordListResponse copyWith(void Function(GetTaskRecordListResponse) updates) => super.copyWith((message) => updates(message as GetTaskRecordListResponse)) as GetTaskRecordListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskRecordListResponse create() => GetTaskRecordListResponse._();
  GetTaskRecordListResponse createEmptyInstance() => create();
  static $pb.PbList<GetTaskRecordListResponse> createRepeated() => $pb.PbList<GetTaskRecordListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTaskRecordListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskRecordListResponse>(create);
  static GetTaskRecordListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskRecordInfo> get sessionList => $_getList(0);
}

class RemoveRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordId', protoName: 'recordId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveRecordRequest._() : super();
  factory RemoveRecordRequest({
    $fixnum.Int64? recordId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (recordId != null) {
      _result.recordId = recordId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveRecordRequest clone() => RemoveRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveRecordRequest copyWith(void Function(RemoveRecordRequest) updates) => super.copyWith((message) => updates(message as RemoveRecordRequest)) as RemoveRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveRecordRequest create() => RemoveRecordRequest._();
  RemoveRecordRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveRecordRequest> createRepeated() => $pb.PbList<RemoveRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveRecordRequest>(create);
  static RemoveRecordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get recordId => $_getI64(0);
  @$pb.TagNumber(1)
  set recordId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'session'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveRecordResponse._() : super();
  factory RemoveRecordResponse() => create();
  factory RemoveRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveRecordResponse clone() => RemoveRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveRecordResponse copyWith(void Function(RemoveRecordResponse) updates) => super.copyWith((message) => updates(message as RemoveRecordResponse)) as RemoveRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveRecordResponse create() => RemoveRecordResponse._();
  RemoveRecordResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveRecordResponse> createRepeated() => $pb.PbList<RemoveRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveRecordResponse>(create);
  static RemoveRecordResponse? _defaultInstance;
}

