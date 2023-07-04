///
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use channelInfoDescriptor instead')
const ChannelInfo$json = const {
  '1': 'ChannelInfo',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'color', '3': 4, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'image', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'image', '17': true},
    const {'1': 'owner', '3': 6, '4': 1, '5': 11, '6': '.profile.ProfileInfo', '10': 'owner'},
    const {'1': 'updateAt', '3': 7, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 8, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_image'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ChannelInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelInfoDescriptor = $convert.base64Decode('CgtDaGFubmVsSW5mbxISCgR1dWlkGAEgASgJUgR1dWlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEZGVzYxgDIAEoCVIEZGVzYxIUCgVjb2xvchgEIAEoCVIFY29sb3ISGQoFaW1hZ2UYBSABKAxIAFIFaW1hZ2WIAQESKgoFb3duZXIYBiABKAsyFC5wcm9maWxlLlByb2ZpbGVJbmZvUgVvd25lchIaCgh1cGRhdGVBdBgHIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYCCABKANIAVIIZGVsZXRlQXSIAQFCCAoGX2ltYWdlQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use channelListDescriptor instead')
const ChannelList$json = const {
  '1': 'ChannelList',
  '2': const [
    const {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.channel.ChannelInfo', '10': 'channels'},
  ],
};

/// Descriptor for `ChannelList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelListDescriptor = $convert.base64Decode('CgtDaGFubmVsTGlzdBIwCghjaGFubmVscxgBIAMoCzIULmNoYW5uZWwuQ2hhbm5lbEluZm9SCGNoYW5uZWxz');
