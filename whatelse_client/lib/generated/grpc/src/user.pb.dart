///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class UserRegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserRegisterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identifier')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unionId', protoName: 'unionId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tencentId', protoName: 'tencentId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appleId', protoName: 'appleId')
    ..hasRequiredFields = false
  ;

  UserRegisterRequest._() : super();
  factory UserRegisterRequest({
    $core.String? username,
    $core.String? identifier,
    $core.String? password,
    $core.String? unionId,
    $core.String? tencentId,
    $core.String? appleId,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (identifier != null) {
      _result.identifier = identifier;
    }
    if (password != null) {
      _result.password = password;
    }
    if (unionId != null) {
      _result.unionId = unionId;
    }
    if (tencentId != null) {
      _result.tencentId = tencentId;
    }
    if (appleId != null) {
      _result.appleId = appleId;
    }
    return _result;
  }
  factory UserRegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRegisterRequest clone() => UserRegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRegisterRequest copyWith(void Function(UserRegisterRequest) updates) => super.copyWith((message) => updates(message as UserRegisterRequest)) as UserRegisterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRegisterRequest create() => UserRegisterRequest._();
  UserRegisterRequest createEmptyInstance() => create();
  static $pb.PbList<UserRegisterRequest> createRepeated() => $pb.PbList<UserRegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterRequest>(create);
  static UserRegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get identifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set identifier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get unionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set unionId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnionId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tencentId => $_getSZ(4);
  @$pb.TagNumber(5)
  set tencentId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTencentId() => $_has(4);
  @$pb.TagNumber(5)
  void clearTencentId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get appleId => $_getSZ(5);
  @$pb.TagNumber(6)
  set appleId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppleId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppleId() => clearField(6);
}

class UserRegisterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserRegisterResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserRegisterResponse._() : super();
  factory UserRegisterResponse() => create();
  factory UserRegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRegisterResponse clone() => UserRegisterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRegisterResponse copyWith(void Function(UserRegisterResponse) updates) => super.copyWith((message) => updates(message as UserRegisterResponse)) as UserRegisterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRegisterResponse create() => UserRegisterResponse._();
  UserRegisterResponse createEmptyInstance() => create();
  static $pb.PbList<UserRegisterResponse> createRepeated() => $pb.PbList<UserRegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterResponse>(create);
  static UserRegisterResponse? _defaultInstance;
}

class UserCheckClaimRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCheckClaimRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userClaim', protoName: 'userClaim')
    ..hasRequiredFields = false
  ;

  UserCheckClaimRequest._() : super();
  factory UserCheckClaimRequest({
    $core.String? userClaim,
  }) {
    final _result = create();
    if (userClaim != null) {
      _result.userClaim = userClaim;
    }
    return _result;
  }
  factory UserCheckClaimRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCheckClaimRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCheckClaimRequest clone() => UserCheckClaimRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCheckClaimRequest copyWith(void Function(UserCheckClaimRequest) updates) => super.copyWith((message) => updates(message as UserCheckClaimRequest)) as UserCheckClaimRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCheckClaimRequest create() => UserCheckClaimRequest._();
  UserCheckClaimRequest createEmptyInstance() => create();
  static $pb.PbList<UserCheckClaimRequest> createRepeated() => $pb.PbList<UserCheckClaimRequest>();
  @$core.pragma('dart2js:noInline')
  static UserCheckClaimRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCheckClaimRequest>(create);
  static UserCheckClaimRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userClaim => $_getSZ(0);
  @$pb.TagNumber(1)
  set userClaim($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserClaim() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserClaim() => clearField(1);
}

class UserCheckClaimResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCheckClaimResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exists')
    ..hasRequiredFields = false
  ;

  UserCheckClaimResponse._() : super();
  factory UserCheckClaimResponse({
    $core.bool? exists,
  }) {
    final _result = create();
    if (exists != null) {
      _result.exists = exists;
    }
    return _result;
  }
  factory UserCheckClaimResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCheckClaimResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCheckClaimResponse clone() => UserCheckClaimResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCheckClaimResponse copyWith(void Function(UserCheckClaimResponse) updates) => super.copyWith((message) => updates(message as UserCheckClaimResponse)) as UserCheckClaimResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCheckClaimResponse create() => UserCheckClaimResponse._();
  UserCheckClaimResponse createEmptyInstance() => create();
  static $pb.PbList<UserCheckClaimResponse> createRepeated() => $pb.PbList<UserCheckClaimResponse>();
  @$core.pragma('dart2js:noInline')
  static UserCheckClaimResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCheckClaimResponse>(create);
  static UserCheckClaimResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get exists => $_getBF(0);
  @$pb.TagNumber(1)
  set exists($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExists() => $_has(0);
  @$pb.TagNumber(1)
  void clearExists() => clearField(1);
}

class UserModNameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModNameRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..hasRequiredFields = false
  ;

  UserModNameRequest._() : super();
  factory UserModNameRequest({
    $core.String? username,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    return _result;
  }
  factory UserModNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModNameRequest clone() => UserModNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModNameRequest copyWith(void Function(UserModNameRequest) updates) => super.copyWith((message) => updates(message as UserModNameRequest)) as UserModNameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModNameRequest create() => UserModNameRequest._();
  UserModNameRequest createEmptyInstance() => create();
  static $pb.PbList<UserModNameRequest> createRepeated() => $pb.PbList<UserModNameRequest>();
  @$core.pragma('dart2js:noInline')
  static UserModNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModNameRequest>(create);
  static UserModNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);
}

class UserModNameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModNameResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserModNameResponse._() : super();
  factory UserModNameResponse() => create();
  factory UserModNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModNameResponse clone() => UserModNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModNameResponse copyWith(void Function(UserModNameResponse) updates) => super.copyWith((message) => updates(message as UserModNameResponse)) as UserModNameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModNameResponse create() => UserModNameResponse._();
  UserModNameResponse createEmptyInstance() => create();
  static $pb.PbList<UserModNameResponse> createRepeated() => $pb.PbList<UserModNameResponse>();
  @$core.pragma('dart2js:noInline')
  static UserModNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModNameResponse>(create);
  static UserModNameResponse? _defaultInstance;
}

class UserModEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModEmailRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  UserModEmailRequest._() : super();
  factory UserModEmailRequest({
    $core.String? email,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory UserModEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModEmailRequest clone() => UserModEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModEmailRequest copyWith(void Function(UserModEmailRequest) updates) => super.copyWith((message) => updates(message as UserModEmailRequest)) as UserModEmailRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModEmailRequest create() => UserModEmailRequest._();
  UserModEmailRequest createEmptyInstance() => create();
  static $pb.PbList<UserModEmailRequest> createRepeated() => $pb.PbList<UserModEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static UserModEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModEmailRequest>(create);
  static UserModEmailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class UserModEmailResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModEmailResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserModEmailResponse._() : super();
  factory UserModEmailResponse() => create();
  factory UserModEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModEmailResponse clone() => UserModEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModEmailResponse copyWith(void Function(UserModEmailResponse) updates) => super.copyWith((message) => updates(message as UserModEmailResponse)) as UserModEmailResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModEmailResponse create() => UserModEmailResponse._();
  UserModEmailResponse createEmptyInstance() => create();
  static $pb.PbList<UserModEmailResponse> createRepeated() => $pb.PbList<UserModEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static UserModEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModEmailResponse>(create);
  static UserModEmailResponse? _defaultInstance;
}

class UserModPhoneRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModPhoneRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..hasRequiredFields = false
  ;

  UserModPhoneRequest._() : super();
  factory UserModPhoneRequest({
    $core.String? phone,
  }) {
    final _result = create();
    if (phone != null) {
      _result.phone = phone;
    }
    return _result;
  }
  factory UserModPhoneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModPhoneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModPhoneRequest clone() => UserModPhoneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModPhoneRequest copyWith(void Function(UserModPhoneRequest) updates) => super.copyWith((message) => updates(message as UserModPhoneRequest)) as UserModPhoneRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModPhoneRequest create() => UserModPhoneRequest._();
  UserModPhoneRequest createEmptyInstance() => create();
  static $pb.PbList<UserModPhoneRequest> createRepeated() => $pb.PbList<UserModPhoneRequest>();
  @$core.pragma('dart2js:noInline')
  static UserModPhoneRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModPhoneRequest>(create);
  static UserModPhoneRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);
}

class UserModPhoneResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModPhoneResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserModPhoneResponse._() : super();
  factory UserModPhoneResponse() => create();
  factory UserModPhoneResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModPhoneResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModPhoneResponse clone() => UserModPhoneResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModPhoneResponse copyWith(void Function(UserModPhoneResponse) updates) => super.copyWith((message) => updates(message as UserModPhoneResponse)) as UserModPhoneResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModPhoneResponse create() => UserModPhoneResponse._();
  UserModPhoneResponse createEmptyInstance() => create();
  static $pb.PbList<UserModPhoneResponse> createRepeated() => $pb.PbList<UserModPhoneResponse>();
  @$core.pragma('dart2js:noInline')
  static UserModPhoneResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModPhoneResponse>(create);
  static UserModPhoneResponse? _defaultInstance;
}

class UserModPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModPasswordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'oldPassword', protoName: 'oldPassword')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newPassword', protoName: 'newPassword')
    ..hasRequiredFields = false
  ;

  UserModPasswordRequest._() : super();
  factory UserModPasswordRequest({
    $core.String? oldPassword,
    $core.String? newPassword,
  }) {
    final _result = create();
    if (oldPassword != null) {
      _result.oldPassword = oldPassword;
    }
    if (newPassword != null) {
      _result.newPassword = newPassword;
    }
    return _result;
  }
  factory UserModPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModPasswordRequest clone() => UserModPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModPasswordRequest copyWith(void Function(UserModPasswordRequest) updates) => super.copyWith((message) => updates(message as UserModPasswordRequest)) as UserModPasswordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModPasswordRequest create() => UserModPasswordRequest._();
  UserModPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<UserModPasswordRequest> createRepeated() => $pb.PbList<UserModPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static UserModPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModPasswordRequest>(create);
  static UserModPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get oldPassword => $_getSZ(0);
  @$pb.TagNumber(1)
  set oldPassword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOldPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearOldPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get newPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set newPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPassword() => clearField(2);
}

class UserModPasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModPasswordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserModPasswordResponse._() : super();
  factory UserModPasswordResponse() => create();
  factory UserModPasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModPasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModPasswordResponse clone() => UserModPasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModPasswordResponse copyWith(void Function(UserModPasswordResponse) updates) => super.copyWith((message) => updates(message as UserModPasswordResponse)) as UserModPasswordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModPasswordResponse create() => UserModPasswordResponse._();
  UserModPasswordResponse createEmptyInstance() => create();
  static $pb.PbList<UserModPasswordResponse> createRepeated() => $pb.PbList<UserModPasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static UserModPasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModPasswordResponse>(create);
  static UserModPasswordResponse? _defaultInstance;
}

class UserModAvatarRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModAvatarRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UserModAvatarRequest._() : super();
  factory UserModAvatarRequest({
    $core.List<$core.int>? avatar,
  }) {
    final _result = create();
    if (avatar != null) {
      _result.avatar = avatar;
    }
    return _result;
  }
  factory UserModAvatarRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModAvatarRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModAvatarRequest clone() => UserModAvatarRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModAvatarRequest copyWith(void Function(UserModAvatarRequest) updates) => super.copyWith((message) => updates(message as UserModAvatarRequest)) as UserModAvatarRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModAvatarRequest create() => UserModAvatarRequest._();
  UserModAvatarRequest createEmptyInstance() => create();
  static $pb.PbList<UserModAvatarRequest> createRepeated() => $pb.PbList<UserModAvatarRequest>();
  @$core.pragma('dart2js:noInline')
  static UserModAvatarRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModAvatarRequest>(create);
  static UserModAvatarRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get avatar => $_getN(0);
  @$pb.TagNumber(1)
  set avatar($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAvatar() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvatar() => clearField(1);
}

class UserModAvatarResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModAvatarResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserModAvatarResponse._() : super();
  factory UserModAvatarResponse() => create();
  factory UserModAvatarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModAvatarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModAvatarResponse clone() => UserModAvatarResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModAvatarResponse copyWith(void Function(UserModAvatarResponse) updates) => super.copyWith((message) => updates(message as UserModAvatarResponse)) as UserModAvatarResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModAvatarResponse create() => UserModAvatarResponse._();
  UserModAvatarResponse createEmptyInstance() => create();
  static $pb.PbList<UserModAvatarResponse> createRepeated() => $pb.PbList<UserModAvatarResponse>();
  @$core.pragma('dart2js:noInline')
  static UserModAvatarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModAvatarResponse>(create);
  static UserModAvatarResponse? _defaultInstance;
}

class UserModUnionIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModUnionIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unionId', protoName: 'unionId')
    ..hasRequiredFields = false
  ;

  UserModUnionIdRequest._() : super();
  factory UserModUnionIdRequest({
    $core.String? unionId,
  }) {
    final _result = create();
    if (unionId != null) {
      _result.unionId = unionId;
    }
    return _result;
  }
  factory UserModUnionIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModUnionIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModUnionIdRequest clone() => UserModUnionIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModUnionIdRequest copyWith(void Function(UserModUnionIdRequest) updates) => super.copyWith((message) => updates(message as UserModUnionIdRequest)) as UserModUnionIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModUnionIdRequest create() => UserModUnionIdRequest._();
  UserModUnionIdRequest createEmptyInstance() => create();
  static $pb.PbList<UserModUnionIdRequest> createRepeated() => $pb.PbList<UserModUnionIdRequest>();
  @$core.pragma('dart2js:noInline')
  static UserModUnionIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModUnionIdRequest>(create);
  static UserModUnionIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set unionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnionId() => clearField(1);
}

class UserModUnionIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModUnionIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unionIdName', protoName: 'unionIdName')
    ..hasRequiredFields = false
  ;

  UserModUnionIdResponse._() : super();
  factory UserModUnionIdResponse({
    $core.String? unionIdName,
  }) {
    final _result = create();
    if (unionIdName != null) {
      _result.unionIdName = unionIdName;
    }
    return _result;
  }
  factory UserModUnionIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModUnionIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModUnionIdResponse clone() => UserModUnionIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModUnionIdResponse copyWith(void Function(UserModUnionIdResponse) updates) => super.copyWith((message) => updates(message as UserModUnionIdResponse)) as UserModUnionIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModUnionIdResponse create() => UserModUnionIdResponse._();
  UserModUnionIdResponse createEmptyInstance() => create();
  static $pb.PbList<UserModUnionIdResponse> createRepeated() => $pb.PbList<UserModUnionIdResponse>();
  @$core.pragma('dart2js:noInline')
  static UserModUnionIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModUnionIdResponse>(create);
  static UserModUnionIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unionIdName => $_getSZ(0);
  @$pb.TagNumber(1)
  set unionIdName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnionIdName() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnionIdName() => clearField(1);
}

class UserModTencentIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModTencentIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tencentId', protoName: 'tencentId')
    ..hasRequiredFields = false
  ;

  UserModTencentIdRequest._() : super();
  factory UserModTencentIdRequest({
    $core.String? tencentId,
  }) {
    final _result = create();
    if (tencentId != null) {
      _result.tencentId = tencentId;
    }
    return _result;
  }
  factory UserModTencentIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModTencentIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModTencentIdRequest clone() => UserModTencentIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModTencentIdRequest copyWith(void Function(UserModTencentIdRequest) updates) => super.copyWith((message) => updates(message as UserModTencentIdRequest)) as UserModTencentIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModTencentIdRequest create() => UserModTencentIdRequest._();
  UserModTencentIdRequest createEmptyInstance() => create();
  static $pb.PbList<UserModTencentIdRequest> createRepeated() => $pb.PbList<UserModTencentIdRequest>();
  @$core.pragma('dart2js:noInline')
  static UserModTencentIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModTencentIdRequest>(create);
  static UserModTencentIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tencentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tencentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTencentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTencentId() => clearField(1);
}

class UserModTencentIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModTencentIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tencentIdName', protoName: 'tencentIdName')
    ..hasRequiredFields = false
  ;

  UserModTencentIdResponse._() : super();
  factory UserModTencentIdResponse({
    $core.String? tencentIdName,
  }) {
    final _result = create();
    if (tencentIdName != null) {
      _result.tencentIdName = tencentIdName;
    }
    return _result;
  }
  factory UserModTencentIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModTencentIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModTencentIdResponse clone() => UserModTencentIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModTencentIdResponse copyWith(void Function(UserModTencentIdResponse) updates) => super.copyWith((message) => updates(message as UserModTencentIdResponse)) as UserModTencentIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModTencentIdResponse create() => UserModTencentIdResponse._();
  UserModTencentIdResponse createEmptyInstance() => create();
  static $pb.PbList<UserModTencentIdResponse> createRepeated() => $pb.PbList<UserModTencentIdResponse>();
  @$core.pragma('dart2js:noInline')
  static UserModTencentIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModTencentIdResponse>(create);
  static UserModTencentIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tencentIdName => $_getSZ(0);
  @$pb.TagNumber(1)
  set tencentIdName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTencentIdName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTencentIdName() => clearField(1);
}

class UserModAppleIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModAppleIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appleId', protoName: 'appleId')
    ..hasRequiredFields = false
  ;

  UserModAppleIdRequest._() : super();
  factory UserModAppleIdRequest({
    $core.String? appleId,
  }) {
    final _result = create();
    if (appleId != null) {
      _result.appleId = appleId;
    }
    return _result;
  }
  factory UserModAppleIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModAppleIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModAppleIdRequest clone() => UserModAppleIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModAppleIdRequest copyWith(void Function(UserModAppleIdRequest) updates) => super.copyWith((message) => updates(message as UserModAppleIdRequest)) as UserModAppleIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModAppleIdRequest create() => UserModAppleIdRequest._();
  UserModAppleIdRequest createEmptyInstance() => create();
  static $pb.PbList<UserModAppleIdRequest> createRepeated() => $pb.PbList<UserModAppleIdRequest>();
  @$core.pragma('dart2js:noInline')
  static UserModAppleIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModAppleIdRequest>(create);
  static UserModAppleIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appleId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appleId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppleId() => clearField(1);
}

class UserModAppleIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserModAppleIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appleIdName', protoName: 'appleIdName')
    ..hasRequiredFields = false
  ;

  UserModAppleIdResponse._() : super();
  factory UserModAppleIdResponse({
    $core.String? appleIdName,
  }) {
    final _result = create();
    if (appleIdName != null) {
      _result.appleIdName = appleIdName;
    }
    return _result;
  }
  factory UserModAppleIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserModAppleIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserModAppleIdResponse clone() => UserModAppleIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserModAppleIdResponse copyWith(void Function(UserModAppleIdResponse) updates) => super.copyWith((message) => updates(message as UserModAppleIdResponse)) as UserModAppleIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserModAppleIdResponse create() => UserModAppleIdResponse._();
  UserModAppleIdResponse createEmptyInstance() => create();
  static $pb.PbList<UserModAppleIdResponse> createRepeated() => $pb.PbList<UserModAppleIdResponse>();
  @$core.pragma('dart2js:noInline')
  static UserModAppleIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserModAppleIdResponse>(create);
  static UserModAppleIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appleIdName => $_getSZ(0);
  @$pb.TagNumber(1)
  set appleIdName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppleIdName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppleIdName() => clearField(1);
}

class UserInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserInfoRequest._() : super();
  factory UserInfoRequest() => create();
  factory UserInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoRequest clone() => UserInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoRequest copyWith(void Function(UserInfoRequest) updates) => super.copyWith((message) => updates(message as UserInfoRequest)) as UserInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoRequest create() => UserInfoRequest._();
  UserInfoRequest createEmptyInstance() => create();
  static $pb.PbList<UserInfoRequest> createRepeated() => $pb.PbList<UserInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static UserInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoRequest>(create);
  static UserInfoRequest? _defaultInstance;
}

class UserInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar', $pb.PbFieldType.OY)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unionIdName', protoName: 'unionIdName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tencentIdName', protoName: 'tencentIdName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appleIdName', protoName: 'appleIdName')
    ..hasRequiredFields = false
  ;

  UserInfoResponse._() : super();
  factory UserInfoResponse({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? email,
    $core.String? phone,
    $core.List<$core.int>? avatar,
    $core.String? unionIdName,
    $core.String? tencentIdName,
    $core.String? appleIdName,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (unionIdName != null) {
      _result.unionIdName = unionIdName;
    }
    if (tencentIdName != null) {
      _result.tencentIdName = tencentIdName;
    }
    if (appleIdName != null) {
      _result.appleIdName = appleIdName;
    }
    return _result;
  }
  factory UserInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoResponse clone() => UserInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoResponse copyWith(void Function(UserInfoResponse) updates) => super.copyWith((message) => updates(message as UserInfoResponse)) as UserInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoResponse create() => UserInfoResponse._();
  UserInfoResponse createEmptyInstance() => create();
  static $pb.PbList<UserInfoResponse> createRepeated() => $pb.PbList<UserInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static UserInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoResponse>(create);
  static UserInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get avatar => $_getN(4);
  @$pb.TagNumber(5)
  set avatar($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get unionIdName => $_getSZ(5);
  @$pb.TagNumber(6)
  set unionIdName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUnionIdName() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnionIdName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tencentIdName => $_getSZ(6);
  @$pb.TagNumber(7)
  set tencentIdName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTencentIdName() => $_has(6);
  @$pb.TagNumber(7)
  void clearTencentIdName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get appleIdName => $_getSZ(7);
  @$pb.TagNumber(8)
  set appleIdName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAppleIdName() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppleIdName() => clearField(8);
}

class UserCancelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCancelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userClaim', protoName: 'userClaim')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  UserCancelRequest._() : super();
  factory UserCancelRequest({
    $core.String? userClaim,
    $core.String? password,
  }) {
    final _result = create();
    if (userClaim != null) {
      _result.userClaim = userClaim;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory UserCancelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCancelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCancelRequest clone() => UserCancelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCancelRequest copyWith(void Function(UserCancelRequest) updates) => super.copyWith((message) => updates(message as UserCancelRequest)) as UserCancelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCancelRequest create() => UserCancelRequest._();
  UserCancelRequest createEmptyInstance() => create();
  static $pb.PbList<UserCancelRequest> createRepeated() => $pb.PbList<UserCancelRequest>();
  @$core.pragma('dart2js:noInline')
  static UserCancelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCancelRequest>(create);
  static UserCancelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userClaim => $_getSZ(0);
  @$pb.TagNumber(1)
  set userClaim($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserClaim() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserClaim() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class UserCancelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCancelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserCancelResponse._() : super();
  factory UserCancelResponse() => create();
  factory UserCancelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCancelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCancelResponse clone() => UserCancelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCancelResponse copyWith(void Function(UserCancelResponse) updates) => super.copyWith((message) => updates(message as UserCancelResponse)) as UserCancelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCancelResponse create() => UserCancelResponse._();
  UserCancelResponse createEmptyInstance() => create();
  static $pb.PbList<UserCancelResponse> createRepeated() => $pb.PbList<UserCancelResponse>();
  @$core.pragma('dart2js:noInline')
  static UserCancelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCancelResponse>(create);
  static UserCancelResponse? _defaultInstance;
}

