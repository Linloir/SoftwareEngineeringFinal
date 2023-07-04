///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use tagInfoDescriptor instead')
const TagInfo$json = const {
  '1': 'TagInfo',
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

/// Descriptor for `TagInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagInfoDescriptor = $convert.base64Decode('CgdUYWdJbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFY29sb3IYAiABKAlSBWNvbG9yEhIKBGljb24YAyABKAlSBGljb24SKgoFb3duZXIYBCABKAsyFC5wcm9maWxlLlByb2ZpbGVJbmZvUgVvd25lchIaCgh1cGRhdGVBdBgFIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYBiABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use tagListDescriptor instead')
const TagList$json = const {
  '1': 'TagList',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 11, '6': '.tag.TagInfo', '10': 'tags'},
  ],
};

/// Descriptor for `TagList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagListDescriptor = $convert.base64Decode('CgdUYWdMaXN0EiAKBHRhZ3MYASADKAsyDC50YWcuVGFnSW5mb1IEdGFncw==');
