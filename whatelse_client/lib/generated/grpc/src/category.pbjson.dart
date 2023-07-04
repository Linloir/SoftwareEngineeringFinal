///
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createCategoryRequestDescriptor instead')
const CreateCategoryRequest$json = const {
  '1': 'CreateCategoryRequest',
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

/// Descriptor for `CreateCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCategoryRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVDYXRlZ29yeVJlcXVlc3QSHAoJcHJvZmlsZUlkGAEgASgDUglwcm9maWxlSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIXCgRkZXNjGAMgASgJSABSBGRlc2OIAQESFAoFY29sb3IYBCABKAVSBWNvbG9yEhIKBGljb24YBSABKAlSBGljb24SGgoIdXBkYXRlQXQYBiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAcgASgDSAFSCGRlbGV0ZUF0iAEBQgcKBV9kZXNjQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use createCategoryResponseDescriptor instead')
const CreateCategoryResponse$json = const {
  '1': 'CreateCategoryResponse',
  '2': const [
    const {'1': 'categoryId', '3': 1, '4': 1, '5': 3, '10': 'categoryId'},
  ],
};

/// Descriptor for `CreateCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCategoryResponseDescriptor = $convert.base64Decode('ChZDcmVhdGVDYXRlZ29yeVJlc3BvbnNlEh4KCmNhdGVnb3J5SWQYASABKANSCmNhdGVnb3J5SWQ=');
@$core.Deprecated('Use getCategoryRequestDescriptor instead')
const GetCategoryRequest$json = const {
  '1': 'GetCategoryRequest',
  '2': const [
    const {'1': 'categoryId', '3': 1, '4': 1, '5': 3, '10': 'categoryId'},
  ],
};

/// Descriptor for `GetCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCategoryRequestDescriptor = $convert.base64Decode('ChJHZXRDYXRlZ29yeVJlcXVlc3QSHgoKY2F0ZWdvcnlJZBgBIAEoA1IKY2F0ZWdvcnlJZA==');
@$core.Deprecated('Use getCategoryResponseDescriptor instead')
const GetCategoryResponse$json = const {
  '1': 'GetCategoryResponse',
  '2': const [
    const {'1': 'categoryId', '3': 1, '4': 1, '5': 3, '10': 'categoryId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'desc', '17': true},
    const {'1': 'color', '3': 5, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 6, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 7, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 8, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_desc'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCategoryResponseDescriptor = $convert.base64Decode('ChNHZXRDYXRlZ29yeVJlc3BvbnNlEh4KCmNhdGVnb3J5SWQYASABKANSCmNhdGVnb3J5SWQSHAoJcHJvZmlsZUlkGAIgASgDUglwcm9maWxlSWQSEgoEbmFtZRgDIAEoCVIEbmFtZRIXCgRkZXNjGAQgASgJSABSBGRlc2OIAQESFAoFY29sb3IYBSABKAVSBWNvbG9yEhIKBGljb24YBiABKAlSBGljb24SGgoIdXBkYXRlQXQYByABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAggASgDSAFSCGRlbGV0ZUF0iAEBQgcKBV9kZXNjQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use modifyCategoryRequestDescriptor instead')
const ModifyCategoryRequest$json = const {
  '1': 'ModifyCategoryRequest',
  '2': const [
    const {'1': 'categoryId', '3': 1, '4': 1, '5': 3, '10': 'categoryId'},
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

/// Descriptor for `ModifyCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyCategoryRequestDescriptor = $convert.base64Decode('ChVNb2RpZnlDYXRlZ29yeVJlcXVlc3QSHgoKY2F0ZWdvcnlJZBgBIAEoA1IKY2F0ZWdvcnlJZBISCgRuYW1lGAIgASgJUgRuYW1lEhcKBGRlc2MYAyABKAlIAFIEZGVzY4gBARIUCgVjb2xvchgEIAEoBVIFY29sb3ISEgoEaWNvbhgFIAEoCVIEaWNvbhIaCgh1cGRhdGVBdBgGIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYByABKANIAVIIZGVsZXRlQXSIAQFCBwoFX2Rlc2NCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use modifyCategoryResponseDescriptor instead')
const ModifyCategoryResponse$json = const {
  '1': 'ModifyCategoryResponse',
};

/// Descriptor for `ModifyCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyCategoryResponseDescriptor = $convert.base64Decode('ChZNb2RpZnlDYXRlZ29yeVJlc3BvbnNl');
@$core.Deprecated('Use removeCategoryRequestDescriptor instead')
const RemoveCategoryRequest$json = const {
  '1': 'RemoveCategoryRequest',
  '2': const [
    const {'1': 'categoryId', '3': 1, '4': 1, '5': 3, '10': 'categoryId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeCategoryRequestDescriptor = $convert.base64Decode('ChVSZW1vdmVDYXRlZ29yeVJlcXVlc3QSHgoKY2F0ZWdvcnlJZBgBIAEoA1IKY2F0ZWdvcnlJZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeCategoryResponseDescriptor instead')
const RemoveCategoryResponse$json = const {
  '1': 'RemoveCategoryResponse',
};

/// Descriptor for `RemoveCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeCategoryResponseDescriptor = $convert.base64Decode('ChZSZW1vdmVDYXRlZ29yeVJlc3BvbnNl');
@$core.Deprecated('Use categoryInfoDescriptor instead')
const CategoryInfo$json = const {
  '1': 'CategoryInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 5, '10': 'profileId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'desc', '17': true},
    const {'1': 'color', '3': 5, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'icon', '3': 6, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'updateAt', '3': 7, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 8, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
  '8': const [
    const {'1': '_desc'},
  ],
};

/// Descriptor for `CategoryInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryInfoDescriptor = $convert.base64Decode('CgxDYXRlZ29yeUluZm8SDgoCaWQYASABKAVSAmlkEhwKCXByb2ZpbGVJZBgCIAEoBVIJcHJvZmlsZUlkEhIKBG5hbWUYAyABKAlSBG5hbWUSFwoEZGVzYxgEIAEoCUgAUgRkZXNjiAEBEhQKBWNvbG9yGAUgASgFUgVjb2xvchISCgRpY29uGAYgASgJUgRpY29uEhoKCHVwZGF0ZUF0GAcgASgDUgh1cGRhdGVBdBIaCghkZWxldGVBdBgIIAEoA1IIZGVsZXRlQXRCBwoFX2Rlc2M=');
@$core.Deprecated('Use getCategoryListRequestDescriptor instead')
const GetCategoryListRequest$json = const {
  '1': 'GetCategoryListRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 5, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetCategoryListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCategoryListRequestDescriptor = $convert.base64Decode('ChZHZXRDYXRlZ29yeUxpc3RSZXF1ZXN0EhwKCXByb2ZpbGVJZBgBIAEoBVIJcHJvZmlsZUlkEiUKC2xhc3RGZXRjaEF0GAIgASgDSABSC2xhc3RGZXRjaEF0iAEBQg4KDF9sYXN0RmV0Y2hBdA==');
@$core.Deprecated('Use getCategoryListResponseDescriptor instead')
const GetCategoryListResponse$json = const {
  '1': 'GetCategoryListResponse',
  '2': const [
    const {'1': 'categoryList', '3': 1, '4': 3, '5': 11, '6': '.category.CategoryInfo', '10': 'categoryList'},
  ],
};

/// Descriptor for `GetCategoryListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCategoryListResponseDescriptor = $convert.base64Decode('ChdHZXRDYXRlZ29yeUxpc3RSZXNwb25zZRI6CgxjYXRlZ29yeUxpc3QYASADKAsyFi5jYXRlZ29yeS5DYXRlZ29yeUluZm9SDGNhdGVnb3J5TGlzdA==');
