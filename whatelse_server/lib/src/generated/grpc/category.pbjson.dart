///
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use categoryInfoDescriptor instead')
const CategoryInfo$json = const {
  '1': 'CategoryInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 2, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'owner', '3': 4, '4': 1, '5': 11, '6': '.profile.ProfileInfo', '10': 'owner'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CategoryInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryInfoDescriptor = $convert.base64Decode('CgxDYXRlZ29yeUluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVjb2xvchgCIAEoCVIFY29sb3ISEgoEaWNvbhgDIAEoCVIEaWNvbhIqCgVvd25lchgEIAEoCzIULnByb2ZpbGUuUHJvZmlsZUluZm9SBW93bmVyEhoKCHVwZGF0ZUF0GAUgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgGIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use categoryListDescriptor instead')
const CategoryList$json = const {
  '1': 'CategoryList',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.category.CategoryInfo', '10': 'categories'},
  ],
};

/// Descriptor for `CategoryList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryListDescriptor = $convert.base64Decode('CgxDYXRlZ29yeUxpc3QSNgoKY2F0ZWdvcmllcxgBIAMoCzIWLmNhdGVnb3J5LkNhdGVnb3J5SW5mb1IKY2F0ZWdvcmllcw==');
