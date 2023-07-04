///
//  Generated code. Do not modify.
//  source: record_attachment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'record.pb.dart' as $11;

class RecordAttachmentInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordAttachmentInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'record_attachment'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$11.RecordInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'record', subBuilder: $11.RecordInfo.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RecordAttachmentInfo._() : super();
  factory RecordAttachmentInfo({
    $core.String? hash,
    $core.String? name,
    $11.RecordInfo? record,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (hash != null) {
      _result.hash = hash;
    }
    if (name != null) {
      _result.name = name;
    }
    if (record != null) {
      _result.record = record;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RecordAttachmentInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordAttachmentInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordAttachmentInfo clone() => RecordAttachmentInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordAttachmentInfo copyWith(void Function(RecordAttachmentInfo) updates) => super.copyWith((message) => updates(message as RecordAttachmentInfo)) as RecordAttachmentInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentInfo create() => RecordAttachmentInfo._();
  RecordAttachmentInfo createEmptyInstance() => create();
  static $pb.PbList<RecordAttachmentInfo> createRepeated() => $pb.PbList<RecordAttachmentInfo>();
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordAttachmentInfo>(create);
  static RecordAttachmentInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $11.RecordInfo get record => $_getN(2);
  @$pb.TagNumber(3)
  set record($11.RecordInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecord() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecord() => clearField(3);
  @$pb.TagNumber(3)
  $11.RecordInfo ensureRecord() => $_ensure(2);

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

class RecordAttachmentList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordAttachmentList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'record_attachment'), createEmptyInstance: create)
    ..pc<RecordAttachmentInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordAttachments', $pb.PbFieldType.PM, protoName: 'recordAttachments', subBuilder: RecordAttachmentInfo.create)
    ..hasRequiredFields = false
  ;

  RecordAttachmentList._() : super();
  factory RecordAttachmentList({
    $core.Iterable<RecordAttachmentInfo>? recordAttachments,
  }) {
    final _result = create();
    if (recordAttachments != null) {
      _result.recordAttachments.addAll(recordAttachments);
    }
    return _result;
  }
  factory RecordAttachmentList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordAttachmentList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordAttachmentList clone() => RecordAttachmentList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordAttachmentList copyWith(void Function(RecordAttachmentList) updates) => super.copyWith((message) => updates(message as RecordAttachmentList)) as RecordAttachmentList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentList create() => RecordAttachmentList._();
  RecordAttachmentList createEmptyInstance() => create();
  static $pb.PbList<RecordAttachmentList> createRepeated() => $pb.PbList<RecordAttachmentList>();
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordAttachmentList>(create);
  static RecordAttachmentList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RecordAttachmentInfo> get recordAttachments => $_getList(0);
}

enum RecordAttachmentStream_Data {
  recordAttachmentInfo, 
  bytes, 
  notSet
}

class RecordAttachmentStream extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RecordAttachmentStream_Data> _RecordAttachmentStream_DataByTag = {
    1 : RecordAttachmentStream_Data.recordAttachmentInfo,
    2 : RecordAttachmentStream_Data.bytes,
    0 : RecordAttachmentStream_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordAttachmentStream', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'record_attachment'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<RecordAttachmentInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordAttachmentInfo', protoName: 'recordAttachmentInfo', subBuilder: RecordAttachmentInfo.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RecordAttachmentStream._() : super();
  factory RecordAttachmentStream({
    RecordAttachmentInfo? recordAttachmentInfo,
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (recordAttachmentInfo != null) {
      _result.recordAttachmentInfo = recordAttachmentInfo;
    }
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory RecordAttachmentStream.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordAttachmentStream.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordAttachmentStream clone() => RecordAttachmentStream()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordAttachmentStream copyWith(void Function(RecordAttachmentStream) updates) => super.copyWith((message) => updates(message as RecordAttachmentStream)) as RecordAttachmentStream; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentStream create() => RecordAttachmentStream._();
  RecordAttachmentStream createEmptyInstance() => create();
  static $pb.PbList<RecordAttachmentStream> createRepeated() => $pb.PbList<RecordAttachmentStream>();
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentStream getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordAttachmentStream>(create);
  static RecordAttachmentStream? _defaultInstance;

  RecordAttachmentStream_Data whichData() => _RecordAttachmentStream_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RecordAttachmentInfo get recordAttachmentInfo => $_getN(0);
  @$pb.TagNumber(1)
  set recordAttachmentInfo(RecordAttachmentInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordAttachmentInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordAttachmentInfo() => clearField(1);
  @$pb.TagNumber(1)
  RecordAttachmentInfo ensureRecordAttachmentInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get bytes => $_getN(1);
  @$pb.TagNumber(2)
  set bytes($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytes() => clearField(2);
}

class RecordAttachmentIdentifier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordAttachmentIdentifier', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'record_attachment'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionUuid', protoName: 'sessionUuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskUuid', protoName: 'taskUuid')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileName', protoName: 'profileName')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recordIndex', $pb.PbFieldType.O3, protoName: 'recordIndex')
    ..hasRequiredFields = false
  ;

  RecordAttachmentIdentifier._() : super();
  factory RecordAttachmentIdentifier({
    $core.String? sessionUuid,
    $core.String? taskUuid,
    $core.int? userId,
    $core.String? profileName,
    $core.int? recordIndex,
  }) {
    final _result = create();
    if (sessionUuid != null) {
      _result.sessionUuid = sessionUuid;
    }
    if (taskUuid != null) {
      _result.taskUuid = taskUuid;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (profileName != null) {
      _result.profileName = profileName;
    }
    if (recordIndex != null) {
      _result.recordIndex = recordIndex;
    }
    return _result;
  }
  factory RecordAttachmentIdentifier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordAttachmentIdentifier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordAttachmentIdentifier clone() => RecordAttachmentIdentifier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordAttachmentIdentifier copyWith(void Function(RecordAttachmentIdentifier) updates) => super.copyWith((message) => updates(message as RecordAttachmentIdentifier)) as RecordAttachmentIdentifier; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentIdentifier create() => RecordAttachmentIdentifier._();
  RecordAttachmentIdentifier createEmptyInstance() => create();
  static $pb.PbList<RecordAttachmentIdentifier> createRepeated() => $pb.PbList<RecordAttachmentIdentifier>();
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentIdentifier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordAttachmentIdentifier>(create);
  static RecordAttachmentIdentifier? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionUuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionUuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskUuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskUuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskUuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get profileName => $_getSZ(3);
  @$pb.TagNumber(4)
  set profileName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProfileName() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfileName() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get recordIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set recordIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRecordIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearRecordIndex() => clearField(5);
}

class RecordAttachmentBytes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecordAttachmentBytes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'record_attachment'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RecordAttachmentBytes._() : super();
  factory RecordAttachmentBytes({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory RecordAttachmentBytes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordAttachmentBytes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordAttachmentBytes clone() => RecordAttachmentBytes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordAttachmentBytes copyWith(void Function(RecordAttachmentBytes) updates) => super.copyWith((message) => updates(message as RecordAttachmentBytes)) as RecordAttachmentBytes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentBytes create() => RecordAttachmentBytes._();
  RecordAttachmentBytes createEmptyInstance() => create();
  static $pb.PbList<RecordAttachmentBytes> createRepeated() => $pb.PbList<RecordAttachmentBytes>();
  @$core.pragma('dart2js:noInline')
  static RecordAttachmentBytes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordAttachmentBytes>(create);
  static RecordAttachmentBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

