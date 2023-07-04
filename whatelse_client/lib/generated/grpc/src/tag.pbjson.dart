///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createTagRequestDescriptor instead')
const CreateTagRequest$json = const {
  '1': 'CreateTagRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 3, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateTagRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTagRequestDescriptor = $convert.base64Decode('ChBDcmVhdGVUYWdSZXF1ZXN0EhwKCXByb2ZpbGVJZBgBIAEoA1IJcHJvZmlsZUlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFY29sb3IYAyABKAVSBWNvbG9yEhIKBGljb24YBCABKAlSBGljb24SGgoIdXBkYXRlQXQYBSABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAYgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use createTagResponseDescriptor instead')
const CreateTagResponse$json = const {
  '1': 'CreateTagResponse',
  '2': const [
    const {'1': 'tagId', '3': 1, '4': 1, '5': 3, '10': 'tagId'},
  ],
};

/// Descriptor for `CreateTagResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTagResponseDescriptor = $convert.base64Decode('ChFDcmVhdGVUYWdSZXNwb25zZRIUCgV0YWdJZBgBIAEoA1IFdGFnSWQ=');
@$core.Deprecated('Use getTagRequestDescriptor instead')
const GetTagRequest$json = const {
  '1': 'GetTagRequest',
  '2': const [
    const {'1': 'tagId', '3': 1, '4': 1, '5': 3, '10': 'tagId'},
  ],
};

/// Descriptor for `GetTagRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTagRequestDescriptor = $convert.base64Decode('Cg1HZXRUYWdSZXF1ZXN0EhQKBXRhZ0lkGAEgASgDUgV0YWdJZA==');
@$core.Deprecated('Use getTagResponseDescriptor instead')
const GetTagResponse$json = const {
  '1': 'GetTagResponse',
  '2': const [
    const {'1': 'tagId', '3': 1, '4': 1, '5': 3, '10': 'tagId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 4, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetTagResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTagResponseDescriptor = $convert.base64Decode('Cg5HZXRUYWdSZXNwb25zZRIUCgV0YWdJZBgBIAEoA1IFdGFnSWQSHAoJcHJvZmlsZUlkGAIgASgDUglwcm9maWxlSWQSEgoEbmFtZRgDIAEoCVIEbmFtZRIUCgVjb2xvchgEIAEoBVIFY29sb3ISEgoEaWNvbhgFIAEoCVIEaWNvbhIaCgh1cGRhdGVBdBgGIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYByABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use modifyTagRequestDescriptor instead')
const ModifyTagRequest$json = const {
  '1': 'ModifyTagRequest',
  '2': const [
    const {'1': 'tagId', '3': 1, '4': 1, '5': 3, '10': 'tagId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 3, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifyTagRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyTagRequestDescriptor = $convert.base64Decode('ChBNb2RpZnlUYWdSZXF1ZXN0EhQKBXRhZ0lkGAEgASgDUgV0YWdJZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWNvbG9yGAMgASgFUgVjb2xvchISCgRpY29uGAQgASgJUgRpY29uEhoKCHVwZGF0ZUF0GAUgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgGIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use modifyTagResponseDescriptor instead')
const ModifyTagResponse$json = const {
  '1': 'ModifyTagResponse',
};

/// Descriptor for `ModifyTagResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyTagResponseDescriptor = $convert.base64Decode('ChFNb2RpZnlUYWdSZXNwb25zZQ==');
@$core.Deprecated('Use tagInfoDescriptor instead')
const TagInfo$json = const {
  '1': 'TagInfo',
  '2': const [
    const {'1': 'tagId', '3': 1, '4': 1, '5': 3, '10': 'tagId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 4, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `TagInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagInfoDescriptor = $convert.base64Decode('CgdUYWdJbmZvEhQKBXRhZ0lkGAEgASgDUgV0YWdJZBIcCglwcm9maWxlSWQYAiABKANSCXByb2ZpbGVJZBISCgRuYW1lGAMgASgJUgRuYW1lEhQKBWNvbG9yGAQgASgFUgVjb2xvchISCgRpY29uGAUgASgJUgRpY29uEhoKCHVwZGF0ZUF0GAYgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgHIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use getTagListRequestDescriptor instead')
const GetTagListRequest$json = const {
  '1': 'GetTagListRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetTagListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTagListRequestDescriptor = $convert.base64Decode('ChFHZXRUYWdMaXN0UmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBIlCgtsYXN0RmV0Y2hBdBgCIAEoA0gAUgtsYXN0RmV0Y2hBdIgBAUIOCgxfbGFzdEZldGNoQXQ=');
@$core.Deprecated('Use getTagListResponseDescriptor instead')
const GetTagListResponse$json = const {
  '1': 'GetTagListResponse',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 11, '6': '.tag.TagInfo', '10': 'tags'},
  ],
};

/// Descriptor for `GetTagListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTagListResponseDescriptor = $convert.base64Decode('ChJHZXRUYWdMaXN0UmVzcG9uc2USIAoEdGFncxgBIAMoCzIMLnRhZy5UYWdJbmZvUgR0YWdz');
@$core.Deprecated('Use removeTagRequestDescriptor instead')
const RemoveTagRequest$json = const {
  '1': 'RemoveTagRequest',
  '2': const [
    const {'1': 'tagId', '3': 1, '4': 1, '5': 3, '10': 'tagId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveTagRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTagRequestDescriptor = $convert.base64Decode('ChBSZW1vdmVUYWdSZXF1ZXN0EhQKBXRhZ0lkGAEgASgDUgV0YWdJZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeTagResponseDescriptor instead')
const RemoveTagResponse$json = const {
  '1': 'RemoveTagResponse',
};

/// Descriptor for `RemoveTagResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTagResponseDescriptor = $convert.base64Decode('ChFSZW1vdmVUYWdSZXNwb25zZQ==');
