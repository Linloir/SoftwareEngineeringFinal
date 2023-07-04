///
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createScheduleRequestDescriptor instead')
const CreateScheduleRequest$json = const {
  '1': 'CreateScheduleRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'relStart', '3': 3, '4': 1, '5': 3, '10': 'relStart'},
    const {'1': 'relEnd', '3': 4, '4': 1, '5': 3, '10': 'relEnd'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateScheduleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createScheduleRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVTY2hlZHVsZVJlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgDUglzZXNzaW9uSWQSHAoJcHJvZmlsZUlkGAIgASgDUglwcm9maWxlSWQSGgoIcmVsU3RhcnQYAyABKANSCHJlbFN0YXJ0EhYKBnJlbEVuZBgEIAEoA1IGcmVsRW5kEhoKCHVwZGF0ZUF0GAUgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgGIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use createScheduleResponseDescriptor instead')
const CreateScheduleResponse$json = const {
  '1': 'CreateScheduleResponse',
  '2': const [
    const {'1': 'scheduleId', '3': 1, '4': 1, '5': 3, '10': 'scheduleId'},
  ],
};

/// Descriptor for `CreateScheduleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createScheduleResponseDescriptor = $convert.base64Decode('ChZDcmVhdGVTY2hlZHVsZVJlc3BvbnNlEh4KCnNjaGVkdWxlSWQYASABKANSCnNjaGVkdWxlSWQ=');
@$core.Deprecated('Use modifyScheduleRequestDescriptor instead')
const ModifyScheduleRequest$json = const {
  '1': 'ModifyScheduleRequest',
  '2': const [
    const {'1': 'scheduleId', '3': 1, '4': 1, '5': 3, '10': 'scheduleId'},
    const {'1': 'relStart', '3': 2, '4': 1, '5': 3, '10': 'relStart'},
    const {'1': 'relEnd', '3': 3, '4': 1, '5': 3, '10': 'relEnd'},
    const {'1': 'updateAt', '3': 4, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifyScheduleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyScheduleRequestDescriptor = $convert.base64Decode('ChVNb2RpZnlTY2hlZHVsZVJlcXVlc3QSHgoKc2NoZWR1bGVJZBgBIAEoA1IKc2NoZWR1bGVJZBIaCghyZWxTdGFydBgCIAEoA1IIcmVsU3RhcnQSFgoGcmVsRW5kGAMgASgDUgZyZWxFbmQSGgoIdXBkYXRlQXQYBCABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAUgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use modifyScheduleResponseDescriptor instead')
const ModifyScheduleResponse$json = const {
  '1': 'ModifyScheduleResponse',
};

/// Descriptor for `ModifyScheduleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyScheduleResponseDescriptor = $convert.base64Decode('ChZNb2RpZnlTY2hlZHVsZVJlc3BvbnNl');
@$core.Deprecated('Use getScheduleRequestDescriptor instead')
const GetScheduleRequest$json = const {
  '1': 'GetScheduleRequest',
  '2': const [
    const {'1': 'scheduleId', '3': 1, '4': 1, '5': 3, '10': 'scheduleId'},
  ],
};

/// Descriptor for `GetScheduleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScheduleRequestDescriptor = $convert.base64Decode('ChJHZXRTY2hlZHVsZVJlcXVlc3QSHgoKc2NoZWR1bGVJZBgBIAEoA1IKc2NoZWR1bGVJZA==');
@$core.Deprecated('Use getScheduleResponseDescriptor instead')
const GetScheduleResponse$json = const {
  '1': 'GetScheduleResponse',
  '2': const [
    const {'1': 'scheduleId', '3': 1, '4': 1, '5': 3, '10': 'scheduleId'},
    const {'1': 'sessionId', '3': 2, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'profileId', '3': 3, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'relStart', '3': 4, '4': 1, '5': 3, '10': 'relStart'},
    const {'1': 'relEnd', '3': 5, '4': 1, '5': 3, '10': 'relEnd'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetScheduleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScheduleResponseDescriptor = $convert.base64Decode('ChNHZXRTY2hlZHVsZVJlc3BvbnNlEh4KCnNjaGVkdWxlSWQYASABKANSCnNjaGVkdWxlSWQSHAoJc2Vzc2lvbklkGAIgASgDUglzZXNzaW9uSWQSHAoJcHJvZmlsZUlkGAMgASgDUglwcm9maWxlSWQSGgoIcmVsU3RhcnQYBCABKANSCHJlbFN0YXJ0EhYKBnJlbEVuZBgFIAEoA1IGcmVsRW5kEhoKCHVwZGF0ZUF0GAYgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgHIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use removeScheduleRequestDescriptor instead')
const RemoveScheduleRequest$json = const {
  '1': 'RemoveScheduleRequest',
  '2': const [
    const {'1': 'scheduleId', '3': 1, '4': 1, '5': 3, '10': 'scheduleId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveScheduleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeScheduleRequestDescriptor = $convert.base64Decode('ChVSZW1vdmVTY2hlZHVsZVJlcXVlc3QSHgoKc2NoZWR1bGVJZBgBIAEoA1IKc2NoZWR1bGVJZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeScheduleResponseDescriptor instead')
const RemoveScheduleResponse$json = const {
  '1': 'RemoveScheduleResponse',
};

/// Descriptor for `RemoveScheduleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeScheduleResponseDescriptor = $convert.base64Decode('ChZSZW1vdmVTY2hlZHVsZVJlc3BvbnNl');
@$core.Deprecated('Use scheduleInfoDescriptor instead')
const ScheduleInfo$json = const {
  '1': 'ScheduleInfo',
  '2': const [
    const {'1': 'scheduleId', '3': 1, '4': 1, '5': 3, '10': 'scheduleId'},
    const {'1': 'sessionId', '3': 2, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'profileId', '3': 3, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'relStart', '3': 4, '4': 1, '5': 3, '10': 'relStart'},
    const {'1': 'relEnd', '3': 5, '4': 1, '5': 3, '10': 'relEnd'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ScheduleInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleInfoDescriptor = $convert.base64Decode('CgxTY2hlZHVsZUluZm8SHgoKc2NoZWR1bGVJZBgBIAEoA1IKc2NoZWR1bGVJZBIcCglzZXNzaW9uSWQYAiABKANSCXNlc3Npb25JZBIcCglwcm9maWxlSWQYAyABKANSCXByb2ZpbGVJZBIaCghyZWxTdGFydBgEIAEoA1IIcmVsU3RhcnQSFgoGcmVsRW5kGAUgASgDUgZyZWxFbmQSGgoIdXBkYXRlQXQYBiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAcgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use sessionScheduleInfoDescriptor instead')
const SessionScheduleInfo$json = const {
  '1': 'SessionScheduleInfo',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'scheduleList', '3': 2, '4': 3, '5': 11, '6': '.schedule.ScheduleInfo', '10': 'scheduleList'},
  ],
};

/// Descriptor for `SessionScheduleInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionScheduleInfoDescriptor = $convert.base64Decode('ChNTZXNzaW9uU2NoZWR1bGVJbmZvEhwKCXNlc3Npb25JZBgBIAEoA1IJc2Vzc2lvbklkEjoKDHNjaGVkdWxlTGlzdBgCIAMoCzIWLnNjaGVkdWxlLlNjaGVkdWxlSW5mb1IMc2NoZWR1bGVMaXN0');
@$core.Deprecated('Use getTaskSchedulesRequestDescriptor instead')
const GetTaskSchedulesRequest$json = const {
  '1': 'GetTaskSchedulesRequest',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetTaskSchedulesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskSchedulesRequestDescriptor = $convert.base64Decode('ChdHZXRUYXNrU2NoZWR1bGVzUmVxdWVzdBIWCgZ0YXNrSWQYASABKANSBnRhc2tJZBIcCglwcm9maWxlSWQYAiABKANSCXByb2ZpbGVJZBIlCgtsYXN0RmV0Y2hBdBgDIAEoA0gAUgtsYXN0RmV0Y2hBdIgBAUIOCgxfbGFzdEZldGNoQXQ=');
@$core.Deprecated('Use getTaskSchedulesResponseDescriptor instead')
const GetTaskSchedulesResponse$json = const {
  '1': 'GetTaskSchedulesResponse',
  '2': const [
    const {'1': 'sessionList', '3': 1, '4': 3, '5': 11, '6': '.schedule.SessionScheduleInfo', '10': 'sessionList'},
  ],
};

/// Descriptor for `GetTaskSchedulesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskSchedulesResponseDescriptor = $convert.base64Decode('ChhHZXRUYXNrU2NoZWR1bGVzUmVzcG9uc2USPwoLc2Vzc2lvbkxpc3QYASADKAsyHS5zY2hlZHVsZS5TZXNzaW9uU2NoZWR1bGVJbmZvUgtzZXNzaW9uTGlzdA==');
@$core.Deprecated('Use taskScheduleInfoDescriptor instead')
const TaskScheduleInfo$json = const {
  '1': 'TaskScheduleInfo',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'sessionList', '3': 2, '4': 3, '5': 11, '6': '.schedule.SessionScheduleInfo', '10': 'sessionList'},
  ],
};

/// Descriptor for `TaskScheduleInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskScheduleInfoDescriptor = $convert.base64Decode('ChBUYXNrU2NoZWR1bGVJbmZvEhYKBnRhc2tJZBgBIAEoA1IGdGFza0lkEj8KC3Nlc3Npb25MaXN0GAIgAygLMh0uc2NoZWR1bGUuU2Vzc2lvblNjaGVkdWxlSW5mb1ILc2Vzc2lvbkxpc3Q=');
@$core.Deprecated('Use getAllSchedulesRequestDescriptor instead')
const GetAllSchedulesRequest$json = const {
  '1': 'GetAllSchedulesRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetAllSchedulesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllSchedulesRequestDescriptor = $convert.base64Decode('ChZHZXRBbGxTY2hlZHVsZXNSZXF1ZXN0EhwKCXByb2ZpbGVJZBgBIAEoA1IJcHJvZmlsZUlkEiUKC2xhc3RGZXRjaEF0GAIgASgDSABSC2xhc3RGZXRjaEF0iAEBQg4KDF9sYXN0RmV0Y2hBdA==');
@$core.Deprecated('Use getAllSchedulesResponseDescriptor instead')
const GetAllSchedulesResponse$json = const {
  '1': 'GetAllSchedulesResponse',
  '2': const [
    const {'1': 'taskList', '3': 1, '4': 3, '5': 11, '6': '.schedule.TaskScheduleInfo', '10': 'taskList'},
  ],
};

/// Descriptor for `GetAllSchedulesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllSchedulesResponseDescriptor = $convert.base64Decode('ChdHZXRBbGxTY2hlZHVsZXNSZXNwb25zZRI2Cgh0YXNrTGlzdBgBIAMoCzIaLnNjaGVkdWxlLlRhc2tTY2hlZHVsZUluZm9SCHRhc2tMaXN0');
