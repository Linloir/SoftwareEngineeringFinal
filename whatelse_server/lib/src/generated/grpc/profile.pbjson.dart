///
//  Generated code. Do not modify.
//  source: profile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use profileInfoDescriptor instead')
const ProfileInfo$json = const {
  '1': 'ProfileInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 2, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'user', '3': 4, '4': 1, '5': 11, '6': '.user.UserInfo', '10': 'user'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ProfileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileInfoDescriptor = $convert.base64Decode('CgtQcm9maWxlSW5mbxISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWNvbG9yGAIgASgJUgVjb2xvchISCgRpY29uGAMgASgJUgRpY29uEiIKBHVzZXIYBCABKAsyDi51c2VyLlVzZXJJbmZvUgR1c2VyEhoKCHVwZGF0ZUF0GAUgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgGIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use profileListDescriptor instead')
const ProfileList$json = const {
  '1': 'ProfileList',
  '2': const [
    const {'1': 'profiles', '3': 1, '4': 3, '5': 11, '6': '.profile.ProfileInfo', '10': 'profiles'},
  ],
};

/// Descriptor for `ProfileList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileListDescriptor = $convert.base64Decode('CgtQcm9maWxlTGlzdBIwCghwcm9maWxlcxgBIAMoCzIULnByb2ZpbGUuUHJvZmlsZUluZm9SCHByb2ZpbGVz');
