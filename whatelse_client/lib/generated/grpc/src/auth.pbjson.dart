///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use authRequestDescriptor instead')
const AuthRequest$json = const {
  '1': 'AuthRequest',
  '2': const [
    const {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRequestDescriptor = $convert.base64Decode('CgtBdXRoUmVxdWVzdBIeCgppZGVudGlmaWVyGAEgASgJUgppZGVudGlmaWVyEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use authResponseDescriptor instead')
const AuthResponse$json = const {
  '1': 'AuthResponse',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `AuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authResponseDescriptor = $convert.base64Decode('CgxBdXRoUmVzcG9uc2USIAoLYWNjZXNzVG9rZW4YASABKAlSC2FjY2Vzc1Rva2VuEiIKDHJlZnJlc2hUb2tlbhgCIAEoCVIMcmVmcmVzaFRva2Vu');
@$core.Deprecated('Use renewAuthNRequestDescriptor instead')
const RenewAuthNRequest$json = const {
  '1': 'RenewAuthNRequest',
  '2': const [
    const {'1': 'refreshToken', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RenewAuthNRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renewAuthNRequestDescriptor = $convert.base64Decode('ChFSZW5ld0F1dGhOUmVxdWVzdBIiCgxyZWZyZXNoVG9rZW4YASABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use renewAuthNResponseDescriptor instead')
const RenewAuthNResponse$json = const {
  '1': 'RenewAuthNResponse',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `RenewAuthNResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renewAuthNResponseDescriptor = $convert.base64Decode('ChJSZW5ld0F1dGhOUmVzcG9uc2USIAoLYWNjZXNzVG9rZW4YASABKAlSC2FjY2Vzc1Rva2Vu');
@$core.Deprecated('Use renewAuthZRequestDescriptor instead')
const RenewAuthZRequest$json = const {
  '1': 'RenewAuthZRequest',
  '2': const [
    const {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'refreshToken', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RenewAuthZRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renewAuthZRequestDescriptor = $convert.base64Decode('ChFSZW5ld0F1dGhaUmVxdWVzdBIeCgppZGVudGlmaWVyGAEgASgJUgppZGVudGlmaWVyEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIiCgxyZWZyZXNoVG9rZW4YAyABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use renewAuthZResponseDescriptor instead')
const RenewAuthZResponse$json = const {
  '1': 'RenewAuthZResponse',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RenewAuthZResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renewAuthZResponseDescriptor = $convert.base64Decode('ChJSZW5ld0F1dGhaUmVzcG9uc2USIAoLYWNjZXNzVG9rZW4YASABKAlSC2FjY2Vzc1Rva2VuEiIKDHJlZnJlc2hUb2tlbhgCIAEoCVIMcmVmcmVzaFRva2Vu');
@$core.Deprecated('Use revokeAuthRequestDescriptor instead')
const RevokeAuthRequest$json = const {
  '1': 'RevokeAuthRequest',
  '2': const [
    const {'1': 'refreshToken', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RevokeAuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeAuthRequestDescriptor = $convert.base64Decode('ChFSZXZva2VBdXRoUmVxdWVzdBIiCgxyZWZyZXNoVG9rZW4YASABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use revokeAuthResponseDescriptor instead')
const RevokeAuthResponse$json = const {
  '1': 'RevokeAuthResponse',
};

/// Descriptor for `RevokeAuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeAuthResponseDescriptor = $convert.base64Decode('ChJSZXZva2VBdXRoUmVzcG9uc2U=');
@$core.Deprecated('Use requestVerifRequestDescriptor instead')
const RequestVerifRequest$json = const {
  '1': 'RequestVerifRequest',
  '2': const [
    const {'1': 'userClaim', '3': 1, '4': 1, '5': 9, '10': 'userClaim'},
  ],
};

/// Descriptor for `RequestVerifRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestVerifRequestDescriptor = $convert.base64Decode('ChNSZXF1ZXN0VmVyaWZSZXF1ZXN0EhwKCXVzZXJDbGFpbRgBIAEoCVIJdXNlckNsYWlt');
@$core.Deprecated('Use requestVerifResponseDescriptor instead')
const RequestVerifResponse$json = const {
  '1': 'RequestVerifResponse',
};

/// Descriptor for `RequestVerifResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestVerifResponseDescriptor = $convert.base64Decode('ChRSZXF1ZXN0VmVyaWZSZXNwb25zZQ==');
@$core.Deprecated('Use validateVerifRequestDescriptor instead')
const ValidateVerifRequest$json = const {
  '1': 'ValidateVerifRequest',
  '2': const [
    const {'1': 'verifCode', '3': 1, '4': 1, '5': 9, '10': 'verifCode'},
    const {'1': 'userClaim', '3': 2, '4': 1, '5': 9, '10': 'userClaim'},
  ],
};

/// Descriptor for `ValidateVerifRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateVerifRequestDescriptor = $convert.base64Decode('ChRWYWxpZGF0ZVZlcmlmUmVxdWVzdBIcCgl2ZXJpZkNvZGUYASABKAlSCXZlcmlmQ29kZRIcCgl1c2VyQ2xhaW0YAiABKAlSCXVzZXJDbGFpbQ==');
@$core.Deprecated('Use validateVerifResponseDescriptor instead')
const ValidateVerifResponse$json = const {
  '1': 'ValidateVerifResponse',
};

/// Descriptor for `ValidateVerifResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateVerifResponseDescriptor = $convert.base64Decode('ChVWYWxpZGF0ZVZlcmlmUmVzcG9uc2U=');
