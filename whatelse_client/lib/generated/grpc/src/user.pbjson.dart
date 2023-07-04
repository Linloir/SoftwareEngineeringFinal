///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userRegisterRequestDescriptor instead')
const UserRegisterRequest$json = const {
  '1': 'UserRegisterRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'identifier', '3': 2, '4': 1, '5': 9, '10': 'identifier'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'unionId', '3': 4, '4': 1, '5': 9, '10': 'unionId'},
    const {'1': 'tencentId', '3': 5, '4': 1, '5': 9, '10': 'tencentId'},
    const {'1': 'appleId', '3': 6, '4': 1, '5': 9, '10': 'appleId'},
  ],
};

/// Descriptor for `UserRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterRequestDescriptor = $convert.base64Decode('ChNVc2VyUmVnaXN0ZXJSZXF1ZXN0EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIeCgppZGVudGlmaWVyGAIgASgJUgppZGVudGlmaWVyEhoKCHBhc3N3b3JkGAMgASgJUghwYXNzd29yZBIYCgd1bmlvbklkGAQgASgJUgd1bmlvbklkEhwKCXRlbmNlbnRJZBgFIAEoCVIJdGVuY2VudElkEhgKB2FwcGxlSWQYBiABKAlSB2FwcGxlSWQ=');
@$core.Deprecated('Use userRegisterResponseDescriptor instead')
const UserRegisterResponse$json = const {
  '1': 'UserRegisterResponse',
};

/// Descriptor for `UserRegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterResponseDescriptor = $convert.base64Decode('ChRVc2VyUmVnaXN0ZXJSZXNwb25zZQ==');
@$core.Deprecated('Use userCheckClaimRequestDescriptor instead')
const UserCheckClaimRequest$json = const {
  '1': 'UserCheckClaimRequest',
  '2': const [
    const {'1': 'userClaim', '3': 1, '4': 1, '5': 9, '10': 'userClaim'},
  ],
};

/// Descriptor for `UserCheckClaimRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCheckClaimRequestDescriptor = $convert.base64Decode('ChVVc2VyQ2hlY2tDbGFpbVJlcXVlc3QSHAoJdXNlckNsYWltGAEgASgJUgl1c2VyQ2xhaW0=');
@$core.Deprecated('Use userCheckClaimResponseDescriptor instead')
const UserCheckClaimResponse$json = const {
  '1': 'UserCheckClaimResponse',
  '2': const [
    const {'1': 'exists', '3': 1, '4': 1, '5': 8, '10': 'exists'},
  ],
};

/// Descriptor for `UserCheckClaimResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCheckClaimResponseDescriptor = $convert.base64Decode('ChZVc2VyQ2hlY2tDbGFpbVJlc3BvbnNlEhYKBmV4aXN0cxgBIAEoCFIGZXhpc3Rz');
@$core.Deprecated('Use userModNameRequestDescriptor instead')
const UserModNameRequest$json = const {
  '1': 'UserModNameRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `UserModNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModNameRequestDescriptor = $convert.base64Decode('ChJVc2VyTW9kTmFtZVJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1l');
@$core.Deprecated('Use userModNameResponseDescriptor instead')
const UserModNameResponse$json = const {
  '1': 'UserModNameResponse',
};

/// Descriptor for `UserModNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModNameResponseDescriptor = $convert.base64Decode('ChNVc2VyTW9kTmFtZVJlc3BvbnNl');
@$core.Deprecated('Use userModEmailRequestDescriptor instead')
const UserModEmailRequest$json = const {
  '1': 'UserModEmailRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email', '17': true},
  ],
  '8': const [
    const {'1': '_email'},
  ],
};

/// Descriptor for `UserModEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModEmailRequestDescriptor = $convert.base64Decode('ChNVc2VyTW9kRW1haWxSZXF1ZXN0EhkKBWVtYWlsGAEgASgJSABSBWVtYWlsiAEBQggKBl9lbWFpbA==');
@$core.Deprecated('Use userModEmailResponseDescriptor instead')
const UserModEmailResponse$json = const {
  '1': 'UserModEmailResponse',
};

/// Descriptor for `UserModEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModEmailResponseDescriptor = $convert.base64Decode('ChRVc2VyTW9kRW1haWxSZXNwb25zZQ==');
@$core.Deprecated('Use userModPhoneRequestDescriptor instead')
const UserModPhoneRequest$json = const {
  '1': 'UserModPhoneRequest',
  '2': const [
    const {'1': 'phone', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'phone', '17': true},
  ],
  '8': const [
    const {'1': '_phone'},
  ],
};

/// Descriptor for `UserModPhoneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModPhoneRequestDescriptor = $convert.base64Decode('ChNVc2VyTW9kUGhvbmVSZXF1ZXN0EhkKBXBob25lGAEgASgJSABSBXBob25liAEBQggKBl9waG9uZQ==');
@$core.Deprecated('Use userModPhoneResponseDescriptor instead')
const UserModPhoneResponse$json = const {
  '1': 'UserModPhoneResponse',
};

/// Descriptor for `UserModPhoneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModPhoneResponseDescriptor = $convert.base64Decode('ChRVc2VyTW9kUGhvbmVSZXNwb25zZQ==');
@$core.Deprecated('Use userModPasswordRequestDescriptor instead')
const UserModPasswordRequest$json = const {
  '1': 'UserModPasswordRequest',
  '2': const [
    const {'1': 'oldPassword', '3': 1, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'newPassword', '3': 2, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `UserModPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModPasswordRequestDescriptor = $convert.base64Decode('ChZVc2VyTW9kUGFzc3dvcmRSZXF1ZXN0EiAKC29sZFBhc3N3b3JkGAEgASgJUgtvbGRQYXNzd29yZBIgCgtuZXdQYXNzd29yZBgCIAEoCVILbmV3UGFzc3dvcmQ=');
@$core.Deprecated('Use userModPasswordResponseDescriptor instead')
const UserModPasswordResponse$json = const {
  '1': 'UserModPasswordResponse',
};

/// Descriptor for `UserModPasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModPasswordResponseDescriptor = $convert.base64Decode('ChdVc2VyTW9kUGFzc3dvcmRSZXNwb25zZQ==');
@$core.Deprecated('Use userModAvatarRequestDescriptor instead')
const UserModAvatarRequest$json = const {
  '1': 'UserModAvatarRequest',
  '2': const [
    const {'1': 'avatar', '3': 1, '4': 1, '5': 12, '10': 'avatar'},
  ],
};

/// Descriptor for `UserModAvatarRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModAvatarRequestDescriptor = $convert.base64Decode('ChRVc2VyTW9kQXZhdGFyUmVxdWVzdBIWCgZhdmF0YXIYASABKAxSBmF2YXRhcg==');
@$core.Deprecated('Use userModAvatarResponseDescriptor instead')
const UserModAvatarResponse$json = const {
  '1': 'UserModAvatarResponse',
};

/// Descriptor for `UserModAvatarResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModAvatarResponseDescriptor = $convert.base64Decode('ChVVc2VyTW9kQXZhdGFyUmVzcG9uc2U=');
@$core.Deprecated('Use userModUnionIdRequestDescriptor instead')
const UserModUnionIdRequest$json = const {
  '1': 'UserModUnionIdRequest',
  '2': const [
    const {'1': 'unionId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'unionId', '17': true},
  ],
  '8': const [
    const {'1': '_unionId'},
  ],
};

/// Descriptor for `UserModUnionIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModUnionIdRequestDescriptor = $convert.base64Decode('ChVVc2VyTW9kVW5pb25JZFJlcXVlc3QSHQoHdW5pb25JZBgBIAEoCUgAUgd1bmlvbklkiAEBQgoKCF91bmlvbklk');
@$core.Deprecated('Use userModUnionIdResponseDescriptor instead')
const UserModUnionIdResponse$json = const {
  '1': 'UserModUnionIdResponse',
  '2': const [
    const {'1': 'unionIdName', '3': 1, '4': 1, '5': 9, '10': 'unionIdName'},
  ],
};

/// Descriptor for `UserModUnionIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModUnionIdResponseDescriptor = $convert.base64Decode('ChZVc2VyTW9kVW5pb25JZFJlc3BvbnNlEiAKC3VuaW9uSWROYW1lGAEgASgJUgt1bmlvbklkTmFtZQ==');
@$core.Deprecated('Use userModTencentIdRequestDescriptor instead')
const UserModTencentIdRequest$json = const {
  '1': 'UserModTencentIdRequest',
  '2': const [
    const {'1': 'tencentId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'tencentId', '17': true},
  ],
  '8': const [
    const {'1': '_tencentId'},
  ],
};

/// Descriptor for `UserModTencentIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModTencentIdRequestDescriptor = $convert.base64Decode('ChdVc2VyTW9kVGVuY2VudElkUmVxdWVzdBIhCgl0ZW5jZW50SWQYASABKAlIAFIJdGVuY2VudElkiAEBQgwKCl90ZW5jZW50SWQ=');
@$core.Deprecated('Use userModTencentIdResponseDescriptor instead')
const UserModTencentIdResponse$json = const {
  '1': 'UserModTencentIdResponse',
  '2': const [
    const {'1': 'tencentIdName', '3': 1, '4': 1, '5': 9, '10': 'tencentIdName'},
  ],
};

/// Descriptor for `UserModTencentIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModTencentIdResponseDescriptor = $convert.base64Decode('ChhVc2VyTW9kVGVuY2VudElkUmVzcG9uc2USJAoNdGVuY2VudElkTmFtZRgBIAEoCVINdGVuY2VudElkTmFtZQ==');
@$core.Deprecated('Use userModAppleIdRequestDescriptor instead')
const UserModAppleIdRequest$json = const {
  '1': 'UserModAppleIdRequest',
  '2': const [
    const {'1': 'appleId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'appleId', '17': true},
  ],
  '8': const [
    const {'1': '_appleId'},
  ],
};

/// Descriptor for `UserModAppleIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModAppleIdRequestDescriptor = $convert.base64Decode('ChVVc2VyTW9kQXBwbGVJZFJlcXVlc3QSHQoHYXBwbGVJZBgBIAEoCUgAUgdhcHBsZUlkiAEBQgoKCF9hcHBsZUlk');
@$core.Deprecated('Use userModAppleIdResponseDescriptor instead')
const UserModAppleIdResponse$json = const {
  '1': 'UserModAppleIdResponse',
  '2': const [
    const {'1': 'appleIdName', '3': 1, '4': 1, '5': 9, '10': 'appleIdName'},
  ],
};

/// Descriptor for `UserModAppleIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userModAppleIdResponseDescriptor = $convert.base64Decode('ChZVc2VyTW9kQXBwbGVJZFJlc3BvbnNlEiAKC2FwcGxlSWROYW1lGAEgASgJUgthcHBsZUlkTmFtZQ==');
@$core.Deprecated('Use userInfoRequestDescriptor instead')
const UserInfoRequest$json = const {
  '1': 'UserInfoRequest',
};

/// Descriptor for `UserInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoRequestDescriptor = $convert.base64Decode('Cg9Vc2VySW5mb1JlcXVlc3Q=');
@$core.Deprecated('Use userInfoResponseDescriptor instead')
const UserInfoResponse$json = const {
  '1': 'UserInfoResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'avatar', '3': 5, '4': 1, '5': 12, '10': 'avatar'},
    const {'1': 'unionIdName', '3': 6, '4': 1, '5': 9, '10': 'unionIdName'},
    const {'1': 'tencentIdName', '3': 7, '4': 1, '5': 9, '10': 'tencentIdName'},
    const {'1': 'appleIdName', '3': 8, '4': 1, '5': 9, '10': 'appleIdName'},
  ],
};

/// Descriptor for `UserInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoResponseDescriptor = $convert.base64Decode('ChBVc2VySW5mb1Jlc3BvbnNlEg4KAmlkGAEgASgDUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBIUCgVwaG9uZRgEIAEoCVIFcGhvbmUSFgoGYXZhdGFyGAUgASgMUgZhdmF0YXISIAoLdW5pb25JZE5hbWUYBiABKAlSC3VuaW9uSWROYW1lEiQKDXRlbmNlbnRJZE5hbWUYByABKAlSDXRlbmNlbnRJZE5hbWUSIAoLYXBwbGVJZE5hbWUYCCABKAlSC2FwcGxlSWROYW1l');
@$core.Deprecated('Use userCancelRequestDescriptor instead')
const UserCancelRequest$json = const {
  '1': 'UserCancelRequest',
  '2': const [
    const {'1': 'userClaim', '3': 1, '4': 1, '5': 9, '10': 'userClaim'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UserCancelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCancelRequestDescriptor = $convert.base64Decode('ChFVc2VyQ2FuY2VsUmVxdWVzdBIcCgl1c2VyQ2xhaW0YASABKAlSCXVzZXJDbGFpbRIaCghwYXNzd29yZBgCIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use userCancelResponseDescriptor instead')
const UserCancelResponse$json = const {
  '1': 'UserCancelResponse',
};

/// Descriptor for `UserCancelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCancelResponseDescriptor = $convert.base64Decode('ChJVc2VyQ2FuY2VsUmVzcG9uc2U=');
