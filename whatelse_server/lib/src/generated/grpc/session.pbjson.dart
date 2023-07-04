///
//  Generated code. Do not modify.
//  source: session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sessionInfoDescriptor instead')
const SessionInfo$json = const {
  '1': 'SessionInfo',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'start', '3': 2, '4': 1, '5': 3, '10': 'start'},
    const {'1': 'end', '3': 3, '4': 1, '5': 3, '10': 'end'},
    const {'1': 'cycle', '3': 4, '4': 1, '5': 3, '10': 'cycle'},
    const {'1': 'task', '3': 5, '4': 1, '5': 11, '6': '.task.TaskInfo', '10': 'task'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `SessionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionInfoDescriptor = $convert.base64Decode('CgtTZXNzaW9uSW5mbxISCgR1dWlkGAEgASgJUgR1dWlkEhQKBXN0YXJ0GAIgASgDUgVzdGFydBIQCgNlbmQYAyABKANSA2VuZBIUCgVjeWNsZRgEIAEoA1IFY3ljbGUSIgoEdGFzaxgFIAEoCzIOLnRhc2suVGFza0luZm9SBHRhc2sSGgoIdXBkYXRlQXQYBiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAcgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use sessionListDescriptor instead')
const SessionList$json = const {
  '1': 'SessionList',
  '2': const [
    const {'1': 'sessions', '3': 1, '4': 3, '5': 11, '6': '.session.SessionInfo', '10': 'sessions'},
  ],
};

/// Descriptor for `SessionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionListDescriptor = $convert.base64Decode('CgtTZXNzaW9uTGlzdBIwCghzZXNzaW9ucxgBIAMoCzIULnNlc3Npb24uU2Vzc2lvbkluZm9SCHNlc3Npb25z');
