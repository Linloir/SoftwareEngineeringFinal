///
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'channel.pbenum.dart';

export 'channel.pbenum.dart';

class CreateChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar', $pb.PbFieldType.OY)
    ..e<ChannelType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.PUBLIC, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reqData', protoName: 'reqData')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  CreateChannelRequest._() : super();
  factory CreateChannelRequest({
    $fixnum.Int64? profileId,
    $core.String? name,
    $core.String? desc,
    $core.String? icon,
    $core.List<$core.int>? image,
    $core.List<$core.int>? avatar,
    ChannelType? type,
    $core.bool? reqData,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (image != null) {
      _result.image = image;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (type != null) {
      _result.type = type;
    }
    if (reqData != null) {
      _result.reqData = reqData;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory CreateChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateChannelRequest clone() => CreateChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateChannelRequest copyWith(void Function(CreateChannelRequest) updates) => super.copyWith((message) => updates(message as CreateChannelRequest)) as CreateChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateChannelRequest create() => CreateChannelRequest._();
  CreateChannelRequest createEmptyInstance() => create();
  static $pb.PbList<CreateChannelRequest> createRepeated() => $pb.PbList<CreateChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateChannelRequest>(create);
  static CreateChannelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get profileId => $_getI64(0);
  @$pb.TagNumber(1)
  set profileId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get image => $_getN(4);
  @$pb.TagNumber(5)
  set image($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImage() => $_has(4);
  @$pb.TagNumber(5)
  void clearImage() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get avatar => $_getN(5);
  @$pb.TagNumber(6)
  set avatar($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvatar() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvatar() => clearField(6);

  @$pb.TagNumber(7)
  ChannelType get type => $_getN(6);
  @$pb.TagNumber(7)
  set type(ChannelType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get reqData => $_getBF(7);
  @$pb.TagNumber(8)
  set reqData($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasReqData() => $_has(7);
  @$pb.TagNumber(8)
  void clearReqData() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get updateAt => $_getI64(8);
  @$pb.TagNumber(9)
  set updateAt($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdateAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateAt() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get deleteAt => $_getI64(9);
  @$pb.TagNumber(10)
  set deleteAt($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeleteAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeleteAt() => clearField(10);
}

class CreateChannelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateChannelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..hasRequiredFields = false
  ;

  CreateChannelResponse._() : super();
  factory CreateChannelResponse({
    $fixnum.Int64? channelId,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    return _result;
  }
  factory CreateChannelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateChannelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateChannelResponse clone() => CreateChannelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateChannelResponse copyWith(void Function(CreateChannelResponse) updates) => super.copyWith((message) => updates(message as CreateChannelResponse)) as CreateChannelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateChannelResponse create() => CreateChannelResponse._();
  CreateChannelResponse createEmptyInstance() => create();
  static $pb.PbList<CreateChannelResponse> createRepeated() => $pb.PbList<CreateChannelResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateChannelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateChannelResponse>(create);
  static CreateChannelResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get channelId => $_getI64(0);
  @$pb.TagNumber(1)
  set channelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);
}

class GetChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..hasRequiredFields = false
  ;

  GetChannelRequest._() : super();
  factory GetChannelRequest({
    $fixnum.Int64? channelId,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    return _result;
  }
  factory GetChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChannelRequest clone() => GetChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChannelRequest copyWith(void Function(GetChannelRequest) updates) => super.copyWith((message) => updates(message as GetChannelRequest)) as GetChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChannelRequest create() => GetChannelRequest._();
  GetChannelRequest createEmptyInstance() => create();
  static $pb.PbList<GetChannelRequest> createRepeated() => $pb.PbList<GetChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static GetChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChannelRequest>(create);
  static GetChannelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get channelId => $_getI64(0);
  @$pb.TagNumber(1)
  set channelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);
}

class GetChannelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetChannelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar', $pb.PbFieldType.OY)
    ..e<ChannelType>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.PUBLIC, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reqData', protoName: 'reqData')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  GetChannelResponse._() : super();
  factory GetChannelResponse({
    $fixnum.Int64? channelId,
    $fixnum.Int64? profileId,
    $core.String? name,
    $core.String? desc,
    $core.String? icon,
    $core.List<$core.int>? image,
    $core.List<$core.int>? avatar,
    ChannelType? type,
    $core.bool? reqData,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (image != null) {
      _result.image = image;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (type != null) {
      _result.type = type;
    }
    if (reqData != null) {
      _result.reqData = reqData;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory GetChannelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChannelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChannelResponse clone() => GetChannelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChannelResponse copyWith(void Function(GetChannelResponse) updates) => super.copyWith((message) => updates(message as GetChannelResponse)) as GetChannelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChannelResponse create() => GetChannelResponse._();
  GetChannelResponse createEmptyInstance() => create();
  static $pb.PbList<GetChannelResponse> createRepeated() => $pb.PbList<GetChannelResponse>();
  @$core.pragma('dart2js:noInline')
  static GetChannelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChannelResponse>(create);
  static GetChannelResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get channelId => $_getI64(0);
  @$pb.TagNumber(1)
  set channelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get profileId => $_getI64(1);
  @$pb.TagNumber(2)
  set profileId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get desc => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get icon => $_getSZ(4);
  @$pb.TagNumber(5)
  set icon($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearIcon() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get image => $_getN(5);
  @$pb.TagNumber(6)
  set image($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get avatar => $_getN(6);
  @$pb.TagNumber(7)
  set avatar($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatar() => clearField(7);

  @$pb.TagNumber(8)
  ChannelType get type => $_getN(7);
  @$pb.TagNumber(8)
  set type(ChannelType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasType() => $_has(7);
  @$pb.TagNumber(8)
  void clearType() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get reqData => $_getBF(8);
  @$pb.TagNumber(9)
  set reqData($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReqData() => $_has(8);
  @$pb.TagNumber(9)
  void clearReqData() => clearField(9);

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

class ChannelInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar', $pb.PbFieldType.OY)
    ..e<ChannelType>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.PUBLIC, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reqData', protoName: 'reqData')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ChannelInfo._() : super();
  factory ChannelInfo({
    $fixnum.Int64? channelId,
    $fixnum.Int64? profileId,
    $core.String? name,
    $core.String? desc,
    $core.String? icon,
    $core.List<$core.int>? image,
    $core.List<$core.int>? avatar,
    ChannelType? type,
    $core.bool? reqData,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (image != null) {
      _result.image = image;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (type != null) {
      _result.type = type;
    }
    if (reqData != null) {
      _result.reqData = reqData;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ChannelInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelInfo clone() => ChannelInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelInfo copyWith(void Function(ChannelInfo) updates) => super.copyWith((message) => updates(message as ChannelInfo)) as ChannelInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelInfo create() => ChannelInfo._();
  ChannelInfo createEmptyInstance() => create();
  static $pb.PbList<ChannelInfo> createRepeated() => $pb.PbList<ChannelInfo>();
  @$core.pragma('dart2js:noInline')
  static ChannelInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelInfo>(create);
  static ChannelInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get channelId => $_getI64(0);
  @$pb.TagNumber(1)
  set channelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get profileId => $_getI64(1);
  @$pb.TagNumber(2)
  set profileId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get desc => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get icon => $_getSZ(4);
  @$pb.TagNumber(5)
  set icon($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearIcon() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get image => $_getN(5);
  @$pb.TagNumber(6)
  set image($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get avatar => $_getN(6);
  @$pb.TagNumber(7)
  set avatar($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatar() => clearField(7);

  @$pb.TagNumber(8)
  ChannelType get type => $_getN(7);
  @$pb.TagNumber(8)
  set type(ChannelType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasType() => $_has(7);
  @$pb.TagNumber(8)
  void clearType() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get reqData => $_getBF(8);
  @$pb.TagNumber(9)
  set reqData($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReqData() => $_has(8);
  @$pb.TagNumber(9)
  void clearReqData() => clearField(9);

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

class GetChannelListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetChannelListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetChannelListRequest._() : super();
  factory GetChannelListRequest({
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
  factory GetChannelListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChannelListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChannelListRequest clone() => GetChannelListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChannelListRequest copyWith(void Function(GetChannelListRequest) updates) => super.copyWith((message) => updates(message as GetChannelListRequest)) as GetChannelListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChannelListRequest create() => GetChannelListRequest._();
  GetChannelListRequest createEmptyInstance() => create();
  static $pb.PbList<GetChannelListRequest> createRepeated() => $pb.PbList<GetChannelListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetChannelListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChannelListRequest>(create);
  static GetChannelListRequest? _defaultInstance;

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

class GetChannelListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetChannelListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..pc<ChannelInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelList', $pb.PbFieldType.PM, protoName: 'channelList', subBuilder: ChannelInfo.create)
    ..hasRequiredFields = false
  ;

  GetChannelListResponse._() : super();
  factory GetChannelListResponse({
    $core.Iterable<ChannelInfo>? channelList,
  }) {
    final _result = create();
    if (channelList != null) {
      _result.channelList.addAll(channelList);
    }
    return _result;
  }
  factory GetChannelListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChannelListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChannelListResponse clone() => GetChannelListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChannelListResponse copyWith(void Function(GetChannelListResponse) updates) => super.copyWith((message) => updates(message as GetChannelListResponse)) as GetChannelListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChannelListResponse create() => GetChannelListResponse._();
  GetChannelListResponse createEmptyInstance() => create();
  static $pb.PbList<GetChannelListResponse> createRepeated() => $pb.PbList<GetChannelListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetChannelListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChannelListResponse>(create);
  static GetChannelListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChannelInfo> get channelList => $_getList(0);
}

class ModifyChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar', $pb.PbFieldType.OY)
    ..e<ChannelType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.PUBLIC, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reqData', protoName: 'reqData')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ModifyChannelRequest._() : super();
  factory ModifyChannelRequest({
    $fixnum.Int64? channelId,
    $core.String? name,
    $core.String? desc,
    $core.String? icon,
    $core.List<$core.int>? image,
    $core.List<$core.int>? avatar,
    ChannelType? type,
    $core.bool? reqData,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (image != null) {
      _result.image = image;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (type != null) {
      _result.type = type;
    }
    if (reqData != null) {
      _result.reqData = reqData;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ModifyChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyChannelRequest clone() => ModifyChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyChannelRequest copyWith(void Function(ModifyChannelRequest) updates) => super.copyWith((message) => updates(message as ModifyChannelRequest)) as ModifyChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyChannelRequest create() => ModifyChannelRequest._();
  ModifyChannelRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyChannelRequest> createRepeated() => $pb.PbList<ModifyChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyChannelRequest>(create);
  static ModifyChannelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get channelId => $_getI64(0);
  @$pb.TagNumber(1)
  set channelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get image => $_getN(4);
  @$pb.TagNumber(5)
  set image($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImage() => $_has(4);
  @$pb.TagNumber(5)
  void clearImage() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get avatar => $_getN(5);
  @$pb.TagNumber(6)
  set avatar($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvatar() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvatar() => clearField(6);

  @$pb.TagNumber(7)
  ChannelType get type => $_getN(6);
  @$pb.TagNumber(7)
  set type(ChannelType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get reqData => $_getBF(7);
  @$pb.TagNumber(8)
  set reqData($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasReqData() => $_has(7);
  @$pb.TagNumber(8)
  void clearReqData() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get updateAt => $_getI64(8);
  @$pb.TagNumber(9)
  set updateAt($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdateAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateAt() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get deleteAt => $_getI64(9);
  @$pb.TagNumber(10)
  set deleteAt($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeleteAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeleteAt() => clearField(10);
}

class ModifyChannelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyChannelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ModifyChannelResponse._() : super();
  factory ModifyChannelResponse() => create();
  factory ModifyChannelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyChannelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyChannelResponse clone() => ModifyChannelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyChannelResponse copyWith(void Function(ModifyChannelResponse) updates) => super.copyWith((message) => updates(message as ModifyChannelResponse)) as ModifyChannelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyChannelResponse create() => ModifyChannelResponse._();
  ModifyChannelResponse createEmptyInstance() => create();
  static $pb.PbList<ModifyChannelResponse> createRepeated() => $pb.PbList<ModifyChannelResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifyChannelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyChannelResponse>(create);
  static ModifyChannelResponse? _defaultInstance;
}

class RemoveChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveChannelRequest._() : super();
  factory RemoveChannelRequest({
    $fixnum.Int64? channelId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveChannelRequest clone() => RemoveChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveChannelRequest copyWith(void Function(RemoveChannelRequest) updates) => super.copyWith((message) => updates(message as RemoveChannelRequest)) as RemoveChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveChannelRequest create() => RemoveChannelRequest._();
  RemoveChannelRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveChannelRequest> createRepeated() => $pb.PbList<RemoveChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveChannelRequest>(create);
  static RemoveChannelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get channelId => $_getI64(0);
  @$pb.TagNumber(1)
  set channelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveChannelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveChannelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveChannelResponse._() : super();
  factory RemoveChannelResponse() => create();
  factory RemoveChannelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveChannelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveChannelResponse clone() => RemoveChannelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveChannelResponse copyWith(void Function(RemoveChannelResponse) updates) => super.copyWith((message) => updates(message as RemoveChannelResponse)) as RemoveChannelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveChannelResponse create() => RemoveChannelResponse._();
  RemoveChannelResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveChannelResponse> createRepeated() => $pb.PbList<RemoveChannelResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveChannelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveChannelResponse>(create);
  static RemoveChannelResponse? _defaultInstance;
}

class CreateSubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..e<SubscriptionType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SubscriptionType.AUTOREJECT, valueOf: SubscriptionType.valueOf, enumValues: SubscriptionType.values)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  CreateSubscriptionRequest._() : super();
  factory CreateSubscriptionRequest({
    $fixnum.Int64? profileId,
    $fixnum.Int64? channelId,
    $core.bool? shareRecord,
    SubscriptionType? type,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (type != null) {
      _result.type = type;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory CreateSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSubscriptionRequest clone() => CreateSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSubscriptionRequest copyWith(void Function(CreateSubscriptionRequest) updates) => super.copyWith((message) => updates(message as CreateSubscriptionRequest)) as CreateSubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSubscriptionRequest create() => CreateSubscriptionRequest._();
  CreateSubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSubscriptionRequest> createRepeated() => $pb.PbList<CreateSubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSubscriptionRequest>(create);
  static CreateSubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get profileId => $_getI64(0);
  @$pb.TagNumber(1)
  set profileId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get channelId => $_getI64(1);
  @$pb.TagNumber(2)
  set channelId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannelId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get shareRecord => $_getBF(2);
  @$pb.TagNumber(3)
  set shareRecord($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShareRecord() => $_has(2);
  @$pb.TagNumber(3)
  void clearShareRecord() => clearField(3);

  @$pb.TagNumber(4)
  SubscriptionType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(SubscriptionType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

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

class CreateSubscriptionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSubscriptionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..hasRequiredFields = false
  ;

  CreateSubscriptionResponse._() : super();
  factory CreateSubscriptionResponse({
    $fixnum.Int64? subscriptionId,
  }) {
    final _result = create();
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    return _result;
  }
  factory CreateSubscriptionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSubscriptionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSubscriptionResponse clone() => CreateSubscriptionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSubscriptionResponse copyWith(void Function(CreateSubscriptionResponse) updates) => super.copyWith((message) => updates(message as CreateSubscriptionResponse)) as CreateSubscriptionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSubscriptionResponse create() => CreateSubscriptionResponse._();
  CreateSubscriptionResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSubscriptionResponse> createRepeated() => $pb.PbList<CreateSubscriptionResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSubscriptionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSubscriptionResponse>(create);
  static CreateSubscriptionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subscriptionId => $_getI64(0);
  @$pb.TagNumber(1)
  set subscriptionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscriptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscriptionId() => clearField(1);
}

class GetSubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..hasRequiredFields = false
  ;

  GetSubscriptionRequest._() : super();
  factory GetSubscriptionRequest({
    $fixnum.Int64? subscriptionId,
  }) {
    final _result = create();
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    return _result;
  }
  factory GetSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSubscriptionRequest clone() => GetSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSubscriptionRequest copyWith(void Function(GetSubscriptionRequest) updates) => super.copyWith((message) => updates(message as GetSubscriptionRequest)) as GetSubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSubscriptionRequest create() => GetSubscriptionRequest._();
  GetSubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<GetSubscriptionRequest> createRepeated() => $pb.PbList<GetSubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSubscriptionRequest>(create);
  static GetSubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subscriptionId => $_getI64(0);
  @$pb.TagNumber(1)
  set subscriptionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscriptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscriptionId() => clearField(1);
}

class GetSubscriptionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSubscriptionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..e<SubscriptionType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SubscriptionType.AUTOREJECT, valueOf: SubscriptionType.valueOf, enumValues: SubscriptionType.values)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  GetSubscriptionResponse._() : super();
  factory GetSubscriptionResponse({
    $fixnum.Int64? subscriptionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? channelId,
    $core.bool? shareRecord,
    SubscriptionType? type,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (type != null) {
      _result.type = type;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory GetSubscriptionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSubscriptionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSubscriptionResponse clone() => GetSubscriptionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSubscriptionResponse copyWith(void Function(GetSubscriptionResponse) updates) => super.copyWith((message) => updates(message as GetSubscriptionResponse)) as GetSubscriptionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSubscriptionResponse create() => GetSubscriptionResponse._();
  GetSubscriptionResponse createEmptyInstance() => create();
  static $pb.PbList<GetSubscriptionResponse> createRepeated() => $pb.PbList<GetSubscriptionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSubscriptionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSubscriptionResponse>(create);
  static GetSubscriptionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subscriptionId => $_getI64(0);
  @$pb.TagNumber(1)
  set subscriptionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscriptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscriptionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get profileId => $_getI64(1);
  @$pb.TagNumber(2)
  set profileId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get channelId => $_getI64(2);
  @$pb.TagNumber(3)
  set channelId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannelId() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get shareRecord => $_getBF(3);
  @$pb.TagNumber(4)
  set shareRecord($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShareRecord() => $_has(3);
  @$pb.TagNumber(4)
  void clearShareRecord() => clearField(4);

  @$pb.TagNumber(5)
  SubscriptionType get type => $_getN(4);
  @$pb.TagNumber(5)
  set type(SubscriptionType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

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

class SubscriptionInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..e<SubscriptionType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SubscriptionType.AUTOREJECT, valueOf: SubscriptionType.valueOf, enumValues: SubscriptionType.values)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  SubscriptionInfo._() : super();
  factory SubscriptionInfo({
    $fixnum.Int64? subscriptionId,
    $fixnum.Int64? profileId,
    $fixnum.Int64? channelId,
    $core.bool? shareRecord,
    SubscriptionType? type,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    if (profileId != null) {
      _result.profileId = profileId;
    }
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (type != null) {
      _result.type = type;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory SubscriptionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionInfo clone() => SubscriptionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionInfo copyWith(void Function(SubscriptionInfo) updates) => super.copyWith((message) => updates(message as SubscriptionInfo)) as SubscriptionInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionInfo create() => SubscriptionInfo._();
  SubscriptionInfo createEmptyInstance() => create();
  static $pb.PbList<SubscriptionInfo> createRepeated() => $pb.PbList<SubscriptionInfo>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionInfo>(create);
  static SubscriptionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subscriptionId => $_getI64(0);
  @$pb.TagNumber(1)
  set subscriptionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscriptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscriptionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get profileId => $_getI64(1);
  @$pb.TagNumber(2)
  set profileId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get channelId => $_getI64(2);
  @$pb.TagNumber(3)
  set channelId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannelId() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get shareRecord => $_getBF(3);
  @$pb.TagNumber(4)
  set shareRecord($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShareRecord() => $_has(3);
  @$pb.TagNumber(4)
  void clearShareRecord() => clearField(4);

  @$pb.TagNumber(5)
  SubscriptionType get type => $_getN(4);
  @$pb.TagNumber(5)
  set type(SubscriptionType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

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

class ChannelSubsciprtionList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelSubsciprtionList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aOM<ChannelInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelInfo', protoName: 'channelInfo', subBuilder: ChannelInfo.create)
    ..aOM<SubscriptionInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionInfo', protoName: 'subscriptionInfo', subBuilder: SubscriptionInfo.create)
    ..hasRequiredFields = false
  ;

  ChannelSubsciprtionList._() : super();
  factory ChannelSubsciprtionList({
    ChannelInfo? channelInfo,
    SubscriptionInfo? subscriptionInfo,
  }) {
    final _result = create();
    if (channelInfo != null) {
      _result.channelInfo = channelInfo;
    }
    if (subscriptionInfo != null) {
      _result.subscriptionInfo = subscriptionInfo;
    }
    return _result;
  }
  factory ChannelSubsciprtionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubsciprtionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubsciprtionList clone() => ChannelSubsciprtionList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubsciprtionList copyWith(void Function(ChannelSubsciprtionList) updates) => super.copyWith((message) => updates(message as ChannelSubsciprtionList)) as ChannelSubsciprtionList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelSubsciprtionList create() => ChannelSubsciprtionList._();
  ChannelSubsciprtionList createEmptyInstance() => create();
  static $pb.PbList<ChannelSubsciprtionList> createRepeated() => $pb.PbList<ChannelSubsciprtionList>();
  @$core.pragma('dart2js:noInline')
  static ChannelSubsciprtionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelSubsciprtionList>(create);
  static ChannelSubsciprtionList? _defaultInstance;

  @$pb.TagNumber(1)
  ChannelInfo get channelInfo => $_getN(0);
  @$pb.TagNumber(1)
  set channelInfo(ChannelInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelInfo() => clearField(1);
  @$pb.TagNumber(1)
  ChannelInfo ensureChannelInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  SubscriptionInfo get subscriptionInfo => $_getN(1);
  @$pb.TagNumber(2)
  set subscriptionInfo(SubscriptionInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscriptionInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscriptionInfo() => clearField(2);
  @$pb.TagNumber(2)
  SubscriptionInfo ensureSubscriptionInfo() => $_ensure(1);
}

class GetSubscriptionListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSubscriptionListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileId', protoName: 'profileId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  GetSubscriptionListRequest._() : super();
  factory GetSubscriptionListRequest({
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
  factory GetSubscriptionListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSubscriptionListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSubscriptionListRequest clone() => GetSubscriptionListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSubscriptionListRequest copyWith(void Function(GetSubscriptionListRequest) updates) => super.copyWith((message) => updates(message as GetSubscriptionListRequest)) as GetSubscriptionListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSubscriptionListRequest create() => GetSubscriptionListRequest._();
  GetSubscriptionListRequest createEmptyInstance() => create();
  static $pb.PbList<GetSubscriptionListRequest> createRepeated() => $pb.PbList<GetSubscriptionListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSubscriptionListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSubscriptionListRequest>(create);
  static GetSubscriptionListRequest? _defaultInstance;

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

class GetSubscriptionListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSubscriptionListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..pc<ChannelSubsciprtionList>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SubscriptionList', $pb.PbFieldType.PM, protoName: 'SubscriptionList', subBuilder: ChannelSubsciprtionList.create)
    ..hasRequiredFields = false
  ;

  GetSubscriptionListResponse._() : super();
  factory GetSubscriptionListResponse({
    $core.Iterable<ChannelSubsciprtionList>? subscriptionList,
  }) {
    final _result = create();
    if (subscriptionList != null) {
      _result.subscriptionList.addAll(subscriptionList);
    }
    return _result;
  }
  factory GetSubscriptionListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSubscriptionListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSubscriptionListResponse clone() => GetSubscriptionListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSubscriptionListResponse copyWith(void Function(GetSubscriptionListResponse) updates) => super.copyWith((message) => updates(message as GetSubscriptionListResponse)) as GetSubscriptionListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSubscriptionListResponse create() => GetSubscriptionListResponse._();
  GetSubscriptionListResponse createEmptyInstance() => create();
  static $pb.PbList<GetSubscriptionListResponse> createRepeated() => $pb.PbList<GetSubscriptionListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSubscriptionListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSubscriptionListResponse>(create);
  static GetSubscriptionListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChannelSubsciprtionList> get subscriptionList => $_getList(0);
}

class ModifySubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifySubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..e<SubscriptionType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SubscriptionType.AUTOREJECT, valueOf: SubscriptionType.valueOf, enumValues: SubscriptionType.values)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ModifySubscriptionRequest._() : super();
  factory ModifySubscriptionRequest({
    $fixnum.Int64? subscriptionId,
    $core.bool? shareRecord,
    SubscriptionType? type,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (type != null) {
      _result.type = type;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ModifySubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifySubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifySubscriptionRequest clone() => ModifySubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifySubscriptionRequest copyWith(void Function(ModifySubscriptionRequest) updates) => super.copyWith((message) => updates(message as ModifySubscriptionRequest)) as ModifySubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifySubscriptionRequest create() => ModifySubscriptionRequest._();
  ModifySubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<ModifySubscriptionRequest> createRepeated() => $pb.PbList<ModifySubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifySubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifySubscriptionRequest>(create);
  static ModifySubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subscriptionId => $_getI64(0);
  @$pb.TagNumber(1)
  set subscriptionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscriptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscriptionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get shareRecord => $_getBF(1);
  @$pb.TagNumber(2)
  set shareRecord($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShareRecord() => $_has(1);
  @$pb.TagNumber(2)
  void clearShareRecord() => clearField(2);

  @$pb.TagNumber(3)
  SubscriptionType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(SubscriptionType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

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

class ModifySubscriptionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifySubscriptionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ModifySubscriptionResponse._() : super();
  factory ModifySubscriptionResponse() => create();
  factory ModifySubscriptionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifySubscriptionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifySubscriptionResponse clone() => ModifySubscriptionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifySubscriptionResponse copyWith(void Function(ModifySubscriptionResponse) updates) => super.copyWith((message) => updates(message as ModifySubscriptionResponse)) as ModifySubscriptionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifySubscriptionResponse create() => ModifySubscriptionResponse._();
  ModifySubscriptionResponse createEmptyInstance() => create();
  static $pb.PbList<ModifySubscriptionResponse> createRepeated() => $pb.PbList<ModifySubscriptionResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifySubscriptionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifySubscriptionResponse>(create);
  static ModifySubscriptionResponse? _defaultInstance;
}

class RemoveSubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveSubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  RemoveSubscriptionRequest._() : super();
  factory RemoveSubscriptionRequest({
    $fixnum.Int64? subscriptionId,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory RemoveSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSubscriptionRequest clone() => RemoveSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSubscriptionRequest copyWith(void Function(RemoveSubscriptionRequest) updates) => super.copyWith((message) => updates(message as RemoveSubscriptionRequest)) as RemoveSubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveSubscriptionRequest create() => RemoveSubscriptionRequest._();
  RemoveSubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveSubscriptionRequest> createRepeated() => $pb.PbList<RemoveSubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveSubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSubscriptionRequest>(create);
  static RemoveSubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subscriptionId => $_getI64(0);
  @$pb.TagNumber(1)
  set subscriptionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscriptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscriptionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleteAt => $_getI64(1);
  @$pb.TagNumber(2)
  set deleteAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteAt() => clearField(2);
}

class RemoveSubscriptionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveSubscriptionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveSubscriptionResponse._() : super();
  factory RemoveSubscriptionResponse() => create();
  factory RemoveSubscriptionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSubscriptionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSubscriptionResponse clone() => RemoveSubscriptionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSubscriptionResponse copyWith(void Function(RemoveSubscriptionResponse) updates) => super.copyWith((message) => updates(message as RemoveSubscriptionResponse)) as RemoveSubscriptionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveSubscriptionResponse create() => RemoveSubscriptionResponse._();
  RemoveSubscriptionResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveSubscriptionResponse> createRepeated() => $pb.PbList<RemoveSubscriptionResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveSubscriptionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSubscriptionResponse>(create);
  static RemoveSubscriptionResponse? _defaultInstance;
}

