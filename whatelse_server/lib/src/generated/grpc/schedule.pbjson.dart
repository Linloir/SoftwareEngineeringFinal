///
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use scheduleInfoDescriptor instead')
const ScheduleInfo$json = const {
  '1': 'ScheduleInfo',
  '2': const [
    const {'1': 'relStart', '3': 1, '4': 1, '5': 3, '10': 'relStart'},
    const {'1': 'relEnd', '3': 2, '4': 1, '5': 3, '10': 'relEnd'},
    const {'1': 'profile', '3': 3, '4': 1, '5': 11, '6': '.profile.ProfileInfo', '10': 'profile'},
    const {'1': 'session', '3': 4, '4': 1, '5': 11, '6': '.session.SessionInfo', '10': 'session'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ScheduleInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleInfoDescriptor = $convert.base64Decode('CgxTY2hlZHVsZUluZm8SGgoIcmVsU3RhcnQYASABKANSCHJlbFN0YXJ0EhYKBnJlbEVuZBgCIAEoA1IGcmVsRW5kEi4KB3Byb2ZpbGUYAyABKAsyFC5wcm9maWxlLlByb2ZpbGVJbmZvUgdwcm9maWxlEi4KB3Nlc3Npb24YBCABKAsyFC5zZXNzaW9uLlNlc3Npb25JbmZvUgdzZXNzaW9uEhoKCHVwZGF0ZUF0GAUgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgGIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use scheduleListDescriptor instead')
const ScheduleList$json = const {
  '1': 'ScheduleList',
  '2': const [
    const {'1': 'schedules', '3': 1, '4': 3, '5': 11, '6': '.schedule.ScheduleInfo', '10': 'schedules'},
  ],
};

/// Descriptor for `ScheduleList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleListDescriptor = $convert.base64Decode('CgxTY2hlZHVsZUxpc3QSNAoJc2NoZWR1bGVzGAEgAygLMhYuc2NoZWR1bGUuU2NoZWR1bGVJbmZvUglzY2hlZHVsZXM=');
