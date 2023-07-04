///
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CreateScheduleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateScheduleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relStart', protoName: 'relStart')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relEnd', protoName: 'relEnd')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  CreateScheduleRequest._() : super();
  factory CreateScheduleRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? relStart,
    $fixnum.Int64? relEnd,
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
    if (relStart != null) {
      _result.relStart = relStart;
    }
    if (relEnd != null) {
      _result.relEnd = relEnd;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory CreateScheduleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateScheduleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateScheduleRequest clone() => CreateScheduleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateScheduleRequest copyWith(void Function(CreateScheduleRequest) updates) => super.copyWith((message) => updates(message as CreateScheduleRequest)) as CreateScheduleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateScheduleRequest create() => CreateScheduleRequest._();
  CreateScheduleRequest createEmptyInstance() => create();
  static $pb.PbList<CreateScheduleRequest> createRepeated() => $pb.PbList<CreateScheduleRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateScheduleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateScheduleRequest>(create);
  static CreateScheduleRequest? _defaultInstance;

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
  $fixnum.Int64 get relStart => $_getI64(2);
  @$pb.TagNumber(3)
  set relStart($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRelStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearRelStart() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get relEnd => $_getI64(3);
  @$pb.TagNumber(4)
  set relEnd($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRelEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearRelEnd() => clearField(4);

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

class CreateScheduleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateScheduleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleId', protoName: 'scheduleId')
    ..hasRequiredFields = false
  ;

  CreateScheduleResponse._() : super();
  factory CreateScheduleResponse({
    $fixnum.Int64? scheduleId,
  }) {
    final _result = create();
    if (scheduleId != null) {
      _result.scheduleId = scheduleId;
    }
    return _result;
  }
  factory CreateScheduleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateScheduleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateScheduleResponse clone() => CreateScheduleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateScheduleResponse copyWith(void Function(CreateScheduleResponse) updates) => super.copyWith((message) => updates(message as CreateScheduleResponse)) as CreateScheduleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateScheduleResponse create() => CreateScheduleResponse._();
  CreateScheduleResponse createEmptyInstance() => create();
  static $pb.PbList<CreateScheduleResponse> createRepeated() => $pb.PbList<CreateScheduleResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateScheduleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateScheduleResponse>(create);
  static CreateScheduleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get scheduleId => $_getI64(0);
  @$pb.TagNumber(1)
  set scheduleId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleId() => clearField(1);
}

class ModifyScheduleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyScheduleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleId', protoName: 'scheduleId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relStart', protoName: 'relStart')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relEnd', protoName: 'relEnd')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ModifyScheduleRequest._() : super();
  factory ModifyScheduleRequest({
    $fixnum.Int64? scheduleId,
    $fixnum.Int64? relStart,
    $fixnum.Int64? relEnd,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (scheduleId != null) {
      _result.scheduleId = scheduleId;
    }
    if (relStart != null) {
      _result.relStart = relStart;
    }
    if (relEnd != null) {
      _result.relEnd = relEnd;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ModifyScheduleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyScheduleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyScheduleRequest clone() => ModifyScheduleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyScheduleRequest copyWith(void Function(ModifyScheduleRequest) updates) => super.copyWith((message) => updates(message as ModifyScheduleRequest)) as ModifyScheduleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyScheduleRequest create() => ModifyScheduleRequest._();
  ModifyScheduleRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyScheduleRequest> createRepeated() => $pb.PbList<ModifyScheduleRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyScheduleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyScheduleRequest>(create);
  static ModifyScheduleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get scheduleId => $_getI64(0);
  @$pb.TagNumber(1)
  set scheduleId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get relStart => $_getI64(1);
  @$pb.TagNumber(2)
  set relStart($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRelStart() => $_has(1);
  @$pb.TagNumber(2)
  void clearRelStart() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get relEnd => $_getI64(2);
  @$pb.TagNumber(3)
  set relEnd($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRelEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearRelEnd() => clearField(3);

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

class ModifyScheduleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyScheduleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ModifyScheduleResponse._() : super();
  factory ModifyScheduleResponse() => create();
  factory ModifyScheduleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyScheduleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyScheduleResponse clone() => ModifyScheduleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyScheduleResponse copyWith(void Function(ModifyScheduleResponse) updates) => super.copyWith((message) => updates(message as ModifyScheduleResponse)) as ModifyScheduleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyScheduleResponse create() => ModifyScheduleResponse._();
  ModifyScheduleResponse createEmptyInstance() => create();
  static $pb.PbList<ModifyScheduleResponse> createRepeated() => $pb.PbList<ModifyScheduleResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifyScheduleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyScheduleResponse>(create);
  static ModifyScheduleResponse? _defaultInstance;
}

class GetScheduleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetScheduleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleId', protoName: 'scheduleId')
    ..hasRequiredFields = false
  ;

  GetScheduleRequest._() : super();
  factory GetScheduleRequest({
    $fixnum.Int64? scheduleId,
  }) {
    final _result = create();
    if (scheduleId != null) {
      _result.scheduleId = scheduleId;
    }
    return _result;
  }
  factory GetScheduleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScheduleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScheduleRequest clone() => GetScheduleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScheduleRequest copyWith(void Function(GetScheduleRequest) updates) => super.copyWith((message) => updates(message as GetScheduleRequest)) as GetScheduleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetScheduleRequest create() => GetScheduleRequest._();
  GetScheduleRequest createEmptyInstance() => create();
  static $pb.PbList<GetScheduleRequest> createRepeated() => $pb.PbList<GetScheduleRequest>();
  @$core.pragma('dart2js:noInline')
  static GetScheduleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScheduleRequest>(create);
  static GetScheduleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get scheduleId => $_getI64(0);
  @$pb.TagNumber(1)
  set scheduleId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleId() => clearField(1);
}

class GetScheduleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetScheduleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleId', protoName: 'scheduleId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relStart', protoName: 'relStart')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relEnd', protoName: 'relEnd')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  GetScheduleResponse._() : super();
  factory GetScheduleResponse({
    $fixnum.Int64? scheduleId,
    $fixnum.Int64? sessionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? relStart,
    $fixnum.Int64? relEnd,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (scheduleId != null) {
      _result.scheduleId = scheduleId;
    }
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (relStart != null) {
      _result.relStart = relStart;
    }
    if (relEnd != null) {
      _result.relEnd = relEnd;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory GetScheduleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScheduleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScheduleResponse clone() => GetScheduleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScheduleResponse copyWith(void Function(GetScheduleResponse) updates) => super.copyWith((message) => updates(message as GetScheduleResponse)) as GetScheduleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetScheduleResponse create() => GetScheduleResponse._();
  GetScheduleResponse createEmptyInstance() => create();
  static $pb.PbList<GetScheduleResponse> createRepeated() => $pb.PbList<GetScheduleResponse>();
  @$core.pragma('dart2js:noInline')
  static GetScheduleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScheduleResponse>(create);
  static GetScheduleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get scheduleId => $_getI64(0);
  @$pb.TagNumber(1)
  set scheduleId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleId() => clearField(1);

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
  $fixnum.Int64 get relStart => $_getI64(3);
  @$pb.TagNumber(4)
  set relStart($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRelStart() => $_has(3);
  @$pb.TagNumber(4)
  void clearRelStart() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get relEnd => $_getI64(4);
  @$pb.TagNumber(5)
  set relEnd($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRelEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearRelEnd() => clearField(5);

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

class RemoveScheduleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveScheduleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleId', protoName: 'scheduleId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveScheduleRequest._() : super();
  factory RemoveScheduleRequest({
    $fixnum.Int64? scheduleId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (scheduleId != null) {
      _result.scheduleId = scheduleId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveScheduleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveScheduleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveScheduleRequest clone() => RemoveScheduleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveScheduleRequest copyWith(void Function(RemoveScheduleRequest) updates) => super.copyWith((message) => updates(message as RemoveScheduleRequest)) as RemoveScheduleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveScheduleRequest create() => RemoveScheduleRequest._();
  RemoveScheduleRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveScheduleRequest> createRepeated() => $pb.PbList<RemoveScheduleRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveScheduleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveScheduleRequest>(create);
  static RemoveScheduleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get scheduleId => $_getI64(0);
  @$pb.TagNumber(1)
  set scheduleId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveScheduleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveScheduleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveScheduleResponse._() : super();
  factory RemoveScheduleResponse() => create();
  factory RemoveScheduleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveScheduleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveScheduleResponse clone() => RemoveScheduleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveScheduleResponse copyWith(void Function(RemoveScheduleResponse) updates) => super.copyWith((message) => updates(message as RemoveScheduleResponse)) as RemoveScheduleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveScheduleResponse create() => RemoveScheduleResponse._();
  RemoveScheduleResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveScheduleResponse> createRepeated() => $pb.PbList<RemoveScheduleResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveScheduleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveScheduleResponse>(create);
  static RemoveScheduleResponse? _defaultInstance;
}

class ScheduleInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScheduleInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleId', protoName: 'scheduleId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relStart', protoName: 'relStart')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relEnd', protoName: 'relEnd')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ScheduleInfo._() : super();
  factory ScheduleInfo({
    $fixnum.Int64? scheduleId,
    $fixnum.Int64? sessionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? relStart,
    $fixnum.Int64? relEnd,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (scheduleId != null) {
      _result.scheduleId = scheduleId;
    }
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (relStart != null) {
      _result.relStart = relStart;
    }
    if (relEnd != null) {
      _result.relEnd = relEnd;
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
  $fixnum.Int64 get scheduleId => $_getI64(0);
  @$pb.TagNumber(1)
  set scheduleId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleId() => clearField(1);

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
  $fixnum.Int64 get relStart => $_getI64(3);
  @$pb.TagNumber(4)
  set relStart($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRelStart() => $_has(3);
  @$pb.TagNumber(4)
  void clearRelStart() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get relEnd => $_getI64(4);
  @$pb.TagNumber(5)
  set relEnd($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRelEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearRelEnd() => clearField(5);

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

class SessionScheduleInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SessionScheduleInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', protoName: 'sessionId')
    ..pc<ScheduleInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleList', $pb.PbFieldType.PM, protoName: 'scheduleList', subBuilder: ScheduleInfo.create)
    ..hasRequiredFields = false
  ;

  SessionScheduleInfo._() : super();
  factory SessionScheduleInfo({
    $fixnum.Int64? sessionId,
    $core.Iterable<ScheduleInfo>? scheduleList,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (scheduleList != null) {
      _result.scheduleList.addAll(scheduleList);
    }
    return _result;
  }
  factory SessionScheduleInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionScheduleInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionScheduleInfo clone() => SessionScheduleInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionScheduleInfo copyWith(void Function(SessionScheduleInfo) updates) => super.copyWith((message) => updates(message as SessionScheduleInfo)) as SessionScheduleInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SessionScheduleInfo create() => SessionScheduleInfo._();
  SessionScheduleInfo createEmptyInstance() => create();
  static $pb.PbList<SessionScheduleInfo> createRepeated() => $pb.PbList<SessionScheduleInfo>();
  @$core.pragma('dart2js:noInline')
  static SessionScheduleInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionScheduleInfo>(create);
  static SessionScheduleInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ScheduleInfo> get scheduleList => $_getList(1);
}

class GetTaskSchedulesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskSchedulesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetTaskSchedulesRequest._() : super();
  factory GetTaskSchedulesRequest({
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
  factory GetTaskSchedulesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskSchedulesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskSchedulesRequest clone() => GetTaskSchedulesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskSchedulesRequest copyWith(void Function(GetTaskSchedulesRequest) updates) => super.copyWith((message) => updates(message as GetTaskSchedulesRequest)) as GetTaskSchedulesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskSchedulesRequest create() => GetTaskSchedulesRequest._();
  GetTaskSchedulesRequest createEmptyInstance() => create();
  static $pb.PbList<GetTaskSchedulesRequest> createRepeated() => $pb.PbList<GetTaskSchedulesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTaskSchedulesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskSchedulesRequest>(create);
  static GetTaskSchedulesRequest? _defaultInstance;

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

class GetTaskSchedulesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskSchedulesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..pc<SessionScheduleInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionList', $pb.PbFieldType.PM, protoName: 'sessionList', subBuilder: SessionScheduleInfo.create)
    ..hasRequiredFields = false
  ;

  GetTaskSchedulesResponse._() : super();
  factory GetTaskSchedulesResponse({
    $core.Iterable<SessionScheduleInfo>? sessionList,
  }) {
    final _result = create();
    if (sessionList != null) {
      _result.sessionList.addAll(sessionList);
    }
    return _result;
  }
  factory GetTaskSchedulesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskSchedulesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskSchedulesResponse clone() => GetTaskSchedulesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskSchedulesResponse copyWith(void Function(GetTaskSchedulesResponse) updates) => super.copyWith((message) => updates(message as GetTaskSchedulesResponse)) as GetTaskSchedulesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskSchedulesResponse create() => GetTaskSchedulesResponse._();
  GetTaskSchedulesResponse createEmptyInstance() => create();
  static $pb.PbList<GetTaskSchedulesResponse> createRepeated() => $pb.PbList<GetTaskSchedulesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTaskSchedulesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskSchedulesResponse>(create);
  static GetTaskSchedulesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SessionScheduleInfo> get sessionList => $_getList(0);
}

class TaskScheduleInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskScheduleInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId', protoName: 'taskId')
    ..pc<SessionScheduleInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionList', $pb.PbFieldType.PM, protoName: 'sessionList', subBuilder: SessionScheduleInfo.create)
    ..hasRequiredFields = false
  ;

  TaskScheduleInfo._() : super();
  factory TaskScheduleInfo({
    $fixnum.Int64? taskId,
    $core.Iterable<SessionScheduleInfo>? sessionList,
  }) {
    final _result = create();
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (sessionList != null) {
      _result.sessionList.addAll(sessionList);
    }
    return _result;
  }
  factory TaskScheduleInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskScheduleInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskScheduleInfo clone() => TaskScheduleInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskScheduleInfo copyWith(void Function(TaskScheduleInfo) updates) => super.copyWith((message) => updates(message as TaskScheduleInfo)) as TaskScheduleInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskScheduleInfo create() => TaskScheduleInfo._();
  TaskScheduleInfo createEmptyInstance() => create();
  static $pb.PbList<TaskScheduleInfo> createRepeated() => $pb.PbList<TaskScheduleInfo>();
  @$core.pragma('dart2js:noInline')
  static TaskScheduleInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskScheduleInfo>(create);
  static TaskScheduleInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<SessionScheduleInfo> get sessionList => $_getList(1);
}

class GetAllSchedulesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllSchedulesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetAllSchedulesRequest._() : super();
  factory GetAllSchedulesRequest({
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
  factory GetAllSchedulesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllSchedulesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllSchedulesRequest clone() => GetAllSchedulesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllSchedulesRequest copyWith(void Function(GetAllSchedulesRequest) updates) => super.copyWith((message) => updates(message as GetAllSchedulesRequest)) as GetAllSchedulesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllSchedulesRequest create() => GetAllSchedulesRequest._();
  GetAllSchedulesRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllSchedulesRequest> createRepeated() => $pb.PbList<GetAllSchedulesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllSchedulesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllSchedulesRequest>(create);
  static GetAllSchedulesRequest? _defaultInstance;

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

class GetAllSchedulesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllSchedulesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'schedule'), createEmptyInstance: create)
    ..pc<TaskScheduleInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskList', $pb.PbFieldType.PM, protoName: 'taskList', subBuilder: TaskScheduleInfo.create)
    ..hasRequiredFields = false
  ;

  GetAllSchedulesResponse._() : super();
  factory GetAllSchedulesResponse({
    $core.Iterable<TaskScheduleInfo>? taskList,
  }) {
    final _result = create();
    if (taskList != null) {
      _result.taskList.addAll(taskList);
    }
    return _result;
  }
  factory GetAllSchedulesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllSchedulesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllSchedulesResponse clone() => GetAllSchedulesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllSchedulesResponse copyWith(void Function(GetAllSchedulesResponse) updates) => super.copyWith((message) => updates(message as GetAllSchedulesResponse)) as GetAllSchedulesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllSchedulesResponse create() => GetAllSchedulesResponse._();
  GetAllSchedulesResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllSchedulesResponse> createRepeated() => $pb.PbList<GetAllSchedulesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllSchedulesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllSchedulesResponse>(create);
  static GetAllSchedulesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskScheduleInfo> get taskList => $_getList(0);
}

