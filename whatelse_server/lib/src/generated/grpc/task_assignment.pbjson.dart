///
//  Generated code. Do not modify.
//  source: task_assignment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use taskAssignmentStatusDescriptor instead')
const TaskAssignmentStatus$json = const {
  '1': 'TaskAssignmentStatus',
  '2': const [
    const {'1': 'ACCEPTED', '2': 0},
    const {'1': 'REJECTED', '2': 1},
  ],
};

/// Descriptor for `TaskAssignmentStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskAssignmentStatusDescriptor = $convert.base64Decode('ChRUYXNrQXNzaWdubWVudFN0YXR1cxIMCghBQ0NFUFRFRBAAEgwKCFJFSkVDVEVEEAE=');
@$core.Deprecated('Use taskPriorityDescriptor instead')
const TaskPriority$json = const {
  '1': 'TaskPriority',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'LOW', '2': 1},
    const {'1': 'MEDIUM', '2': 2},
    const {'1': 'HIGH', '2': 3},
    const {'1': 'URGENT', '2': 4},
  ],
};

/// Descriptor for `TaskPriority`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskPriorityDescriptor = $convert.base64Decode('CgxUYXNrUHJpb3JpdHkSCAoETk9ORRAAEgcKA0xPVxABEgoKBk1FRElVTRACEggKBEhJR0gQAxIKCgZVUkdFTlQQBA==');
@$core.Deprecated('Use taskAssignmentInfoDescriptor instead')
const TaskAssignmentInfo$json = const {
  '1': 'TaskAssignmentInfo',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.task_assignment.TaskAssignmentStatus', '10': 'status'},
    const {'1': 'priority', '3': 2, '4': 1, '5': 14, '6': '.task_assignment.TaskPriority', '10': 'priority'},
    const {'1': 'starred', '3': 3, '4': 1, '5': 8, '10': 'starred'},
    const {'1': 'profile', '3': 4, '4': 1, '5': 11, '6': '.profile.ProfileInfo', '10': 'profile'},
    const {'1': 'task', '3': 5, '4': 1, '5': 11, '6': '.task.TaskInfo', '10': 'task'},
    const {'1': 'category', '3': 6, '4': 1, '5': 11, '6': '.category.CategoryInfo', '9': 0, '10': 'category', '17': true},
    const {'1': 'tags', '3': 7, '4': 3, '5': 11, '6': '.tag.TagInfo', '10': 'tags'},
    const {'1': 'updateAt', '3': 8, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 9, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_category'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `TaskAssignmentInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskAssignmentInfoDescriptor = $convert.base64Decode('ChJUYXNrQXNzaWdubWVudEluZm8SPQoGc3RhdHVzGAEgASgOMiUudGFza19hc3NpZ25tZW50LlRhc2tBc3NpZ25tZW50U3RhdHVzUgZzdGF0dXMSOQoIcHJpb3JpdHkYAiABKA4yHS50YXNrX2Fzc2lnbm1lbnQuVGFza1ByaW9yaXR5Ughwcmlvcml0eRIYCgdzdGFycmVkGAMgASgIUgdzdGFycmVkEi4KB3Byb2ZpbGUYBCABKAsyFC5wcm9maWxlLlByb2ZpbGVJbmZvUgdwcm9maWxlEiIKBHRhc2sYBSABKAsyDi50YXNrLlRhc2tJbmZvUgR0YXNrEjcKCGNhdGVnb3J5GAYgASgLMhYuY2F0ZWdvcnkuQ2F0ZWdvcnlJbmZvSABSCGNhdGVnb3J5iAEBEiAKBHRhZ3MYByADKAsyDC50YWcuVGFnSW5mb1IEdGFncxIaCgh1cGRhdGVBdBgIIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYCSABKANIAVIIZGVsZXRlQXSIAQFCCwoJX2NhdGVnb3J5QgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use taskAssignmentListDescriptor instead')
const TaskAssignmentList$json = const {
  '1': 'TaskAssignmentList',
  '2': const [
    const {'1': 'taskAssignments', '3': 1, '4': 3, '5': 11, '6': '.task_assignment.TaskAssignmentInfo', '10': 'taskAssignments'},
  ],
};

/// Descriptor for `TaskAssignmentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskAssignmentListDescriptor = $convert.base64Decode('ChJUYXNrQXNzaWdubWVudExpc3QSTQoPdGFza0Fzc2lnbm1lbnRzGAEgAygLMiMudGFza19hc3NpZ25tZW50LlRhc2tBc3NpZ25tZW50SW5mb1IPdGFza0Fzc2lnbm1lbnRz');
