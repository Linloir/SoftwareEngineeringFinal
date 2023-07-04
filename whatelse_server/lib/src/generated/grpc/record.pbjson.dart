///
//  Generated code. Do not modify.
//  source: record.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use recordInfoDescriptor instead')
const RecordInfo$json = const {
  '1': 'RecordInfo',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'index', '3': 2, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'task', '3': 3, '4': 1, '5': 11, '6': '.task.TaskInfo', '10': 'task'},
    const {'1': 'session', '3': 4, '4': 1, '5': 11, '6': '.session.SessionInfo', '10': 'session'},
    const {'1': 'profile', '3': 5, '4': 1, '5': 11, '6': '.profile.ProfileInfo', '10': 'profile'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `RecordInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordInfoDescriptor = $convert.base64Decode('CgpSZWNvcmRJbmZvEhIKBHRpbWUYASABKANSBHRpbWUSFAoFaW5kZXgYAiABKAVSBWluZGV4EiIKBHRhc2sYAyABKAsyDi50YXNrLlRhc2tJbmZvUgR0YXNrEi4KB3Nlc3Npb24YBCABKAsyFC5zZXNzaW9uLlNlc3Npb25JbmZvUgdzZXNzaW9uEi4KB3Byb2ZpbGUYBSABKAsyFC5wcm9maWxlLlByb2ZpbGVJbmZvUgdwcm9maWxlEhoKCHVwZGF0ZUF0GAYgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgHIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use recordListDescriptor instead')
const RecordList$json = const {
  '1': 'RecordList',
  '2': const [
    const {'1': 'records', '3': 1, '4': 3, '5': 11, '6': '.record.RecordInfo', '10': 'records'},
  ],
};

/// Descriptor for `RecordList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordListDescriptor = $convert.base64Decode('CgpSZWNvcmRMaXN0EiwKB3JlY29yZHMYASADKAsyEi5yZWNvcmQuUmVjb3JkSW5mb1IHcmVjb3Jkcw==');
