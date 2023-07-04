///
//  Generated code. Do not modify.
//  source: profile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createProfileRequestDescriptor instead')
const CreateProfileRequest$json = const {
  '1': 'CreateProfileRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'desc', '17': true},
    const {'1': 'color', '3': 3, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_desc'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProfileRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVQcm9maWxlUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhcKBGRlc2MYAiABKAlIAFIEZGVzY4gBARIUCgVjb2xvchgDIAEoBVIFY29sb3ISEgoEaWNvbhgEIAEoCVIEaWNvbhIaCgh1cGRhdGVBdBgFIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYBiABKANIAVIIZGVsZXRlQXSIAQFCBwoFX2Rlc2NCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use createProfileResponseDescriptor instead')
const CreateProfileResponse$json = const {
  '1': 'CreateProfileResponse',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
  ],
};

/// Descriptor for `CreateProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProfileResponseDescriptor = $convert.base64Decode('ChVDcmVhdGVQcm9maWxlUmVzcG9uc2USHAoJcHJvZmlsZUlkGAEgASgDUglwcm9maWxlSWQ=');
@$core.Deprecated('Use getProfileRequestDescriptor instead')
const GetProfileRequest$json = const {
  '1': 'GetProfileRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
  ],
};

/// Descriptor for `GetProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileRequestDescriptor = $convert.base64Decode('ChFHZXRQcm9maWxlUmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZA==');
@$core.Deprecated('Use getProfileResponseDescriptor instead')
const GetProfileResponse$json = const {
  '1': 'GetProfileResponse',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'desc', '17': true},
    const {'1': 'color', '3': 4, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_desc'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileResponseDescriptor = $convert.base64Decode('ChJHZXRQcm9maWxlUmVzcG9uc2USHAoJcHJvZmlsZUlkGAEgASgDUglwcm9maWxlSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIXCgRkZXNjGAMgASgJSABSBGRlc2OIAQESFAoFY29sb3IYBCABKAVSBWNvbG9yEhIKBGljb24YBSABKAlSBGljb24SGgoIdXBkYXRlQXQYBiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAcgASgDSAFSCGRlbGV0ZUF0iAEBQgcKBV9kZXNjQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use modifyProfileRequestDescriptor instead')
const ModifyProfileRequest$json = const {
  '1': 'ModifyProfileRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'desc', '17': true},
    const {'1': 'color', '3': 4, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_desc'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifyProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyProfileRequestDescriptor = $convert.base64Decode('ChRNb2RpZnlQcm9maWxlUmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBISCgRuYW1lGAIgASgJUgRuYW1lEhcKBGRlc2MYAyABKAlIAFIEZGVzY4gBARIUCgVjb2xvchgEIAEoBVIFY29sb3ISEgoEaWNvbhgFIAEoCVIEaWNvbhIaCgh1cGRhdGVBdBgGIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYByABKANIAVIIZGVsZXRlQXSIAQFCBwoFX2Rlc2NCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use modifyProfileResponseDescriptor instead')
const ModifyProfileResponse$json = const {
  '1': 'ModifyProfileResponse',
};

/// Descriptor for `ModifyProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyProfileResponseDescriptor = $convert.base64Decode('ChVNb2RpZnlQcm9maWxlUmVzcG9uc2U=');
@$core.Deprecated('Use removeProfileRequestDescriptor instead')
const RemoveProfileRequest$json = const {
  '1': 'RemoveProfileRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeProfileRequestDescriptor = $convert.base64Decode('ChRSZW1vdmVQcm9maWxlUmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeProfileResponseDescriptor instead')
const RemoveProfileResponse$json = const {
  '1': 'RemoveProfileResponse',
};

/// Descriptor for `RemoveProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeProfileResponseDescriptor = $convert.base64Decode('ChVSZW1vdmVQcm9maWxlUmVzcG9uc2U=');
@$core.Deprecated('Use profileInfoDescriptor instead')
const ProfileInfo$json = const {
  '1': 'ProfileInfo',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'desc', '17': true},
    const {'1': 'color', '3': 4, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_desc'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ProfileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileInfoDescriptor = $convert.base64Decode('CgtQcm9maWxlSW5mbxIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBISCgRuYW1lGAIgASgJUgRuYW1lEhcKBGRlc2MYAyABKAlIAFIEZGVzY4gBARIUCgVjb2xvchgEIAEoBVIFY29sb3ISEgoEaWNvbhgFIAEoCVIEaWNvbhIaCgh1cGRhdGVBdBgGIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYByABKANIAVIIZGVsZXRlQXSIAQFCBwoFX2Rlc2NCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use getProfileListRequestDescriptor instead')
const GetProfileListRequest$json = const {
  '1': 'GetProfileListRequest',
  '2': const [
    const {'1': 'lastFetchAt', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetProfileListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileListRequestDescriptor = $convert.base64Decode('ChVHZXRQcm9maWxlTGlzdFJlcXVlc3QSJQoLbGFzdEZldGNoQXQYASABKANIAFILbGFzdEZldGNoQXSIAQFCDgoMX2xhc3RGZXRjaEF0');
@$core.Deprecated('Use getProfileListResponseDescriptor instead')
const GetProfileListResponse$json = const {
  '1': 'GetProfileListResponse',
  '2': const [
    const {'1': 'profiles', '3': 1, '4': 3, '5': 11, '6': '.profile.ProfileInfo', '10': 'profiles'},
  ],
};

/// Descriptor for `GetProfileListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileListResponseDescriptor = $convert.base64Decode('ChZHZXRQcm9maWxlTGlzdFJlc3BvbnNlEjAKCHByb2ZpbGVzGAEgAygLMhQucHJvZmlsZS5Qcm9maWxlSW5mb1IIcHJvZmlsZXM=');
