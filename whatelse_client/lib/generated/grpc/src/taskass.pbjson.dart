///
//  Generated code. Do not modify.
//  source: taskass.proto
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
@$core.Deprecated('Use createTaskAssignmentRequestDescriptor instead')
const CreateTaskAssignmentRequest$json = const {
  '1': 'CreateTaskAssignmentRequest',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.taskassignment.TaskAssignmentStatus', '10': 'status'},
    const {'1': 'categoryID', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'categoryID', '17': true},
    const {'1': 'tagIDs', '3': 5, '4': 3, '5': 3, '10': 'tagIDs'},
    const {'1': 'priority', '3': 6, '4': 1, '5': 14, '6': '.taskassignment.TaskPriority', '10': 'priority'},
    const {'1': 'starred', '3': 7, '4': 1, '5': 8, '10': 'starred'},
    const {'1': 'archived', '3': 8, '4': 1, '5': 8, '10': 'archived'},
    const {'1': 'shareRecord', '3': 9, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'postAction', '3': 10, '4': 1, '5': 9, '9': 1, '10': 'postAction', '17': true},
    const {'1': 'updateAt', '3': 11, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 12, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_categoryID'},
    const {'1': '_postAction'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateTaskAssignmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskAssignmentRequestDescriptor = $convert.base64Decode('ChtDcmVhdGVUYXNrQXNzaWdubWVudFJlcXVlc3QSFgoGdGFza0lkGAEgASgDUgZ0YXNrSWQSHAoJcHJvZmlsZUlkGAIgASgDUglwcm9maWxlSWQSPAoGc3RhdHVzGAMgASgOMiQudGFza2Fzc2lnbm1lbnQuVGFza0Fzc2lnbm1lbnRTdGF0dXNSBnN0YXR1cxIjCgpjYXRlZ29yeUlEGAQgASgDSABSCmNhdGVnb3J5SUSIAQESFgoGdGFnSURzGAUgAygDUgZ0YWdJRHMSOAoIcHJpb3JpdHkYBiABKA4yHC50YXNrYXNzaWdubWVudC5UYXNrUHJpb3JpdHlSCHByaW9yaXR5EhgKB3N0YXJyZWQYByABKAhSB3N0YXJyZWQSGgoIYXJjaGl2ZWQYCCABKAhSCGFyY2hpdmVkEiAKC3NoYXJlUmVjb3JkGAkgASgIUgtzaGFyZVJlY29yZBIjCgpwb3N0QWN0aW9uGAogASgJSAFSCnBvc3RBY3Rpb26IAQESGgoIdXBkYXRlQXQYCyABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAwgASgDSAJSCGRlbGV0ZUF0iAEBQg0KC19jYXRlZ29yeUlEQg0KC19wb3N0QWN0aW9uQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use createTaskAssignmentResponseDescriptor instead')
const CreateTaskAssignmentResponse$json = const {
  '1': 'CreateTaskAssignmentResponse',
  '2': const [
    const {'1': 'assignmentId', '3': 1, '4': 1, '5': 3, '10': 'assignmentId'},
  ],
};

/// Descriptor for `CreateTaskAssignmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskAssignmentResponseDescriptor = $convert.base64Decode('ChxDcmVhdGVUYXNrQXNzaWdubWVudFJlc3BvbnNlEiIKDGFzc2lnbm1lbnRJZBgBIAEoA1IMYXNzaWdubWVudElk');
@$core.Deprecated('Use getTaskAssignmentRequestDescriptor instead')
const GetTaskAssignmentRequest$json = const {
  '1': 'GetTaskAssignmentRequest',
  '2': const [
    const {'1': 'assignmentId', '3': 1, '4': 1, '5': 3, '10': 'assignmentId'},
  ],
};

/// Descriptor for `GetTaskAssignmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskAssignmentRequestDescriptor = $convert.base64Decode('ChhHZXRUYXNrQXNzaWdubWVudFJlcXVlc3QSIgoMYXNzaWdubWVudElkGAEgASgDUgxhc3NpZ25tZW50SWQ=');
@$core.Deprecated('Use getTaskAssignmentResponseDescriptor instead')
const GetTaskAssignmentResponse$json = const {
  '1': 'GetTaskAssignmentResponse',
  '2': const [
    const {'1': 'assignmentId', '3': 1, '4': 1, '5': 3, '10': 'assignmentId'},
    const {'1': 'taskId', '3': 2, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'profileId', '3': 3, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.taskassignment.TaskAssignmentStatus', '10': 'status'},
    const {'1': 'categoryID', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'categoryID', '17': true},
    const {'1': 'tagIDs', '3': 6, '4': 3, '5': 3, '10': 'tagIDs'},
    const {'1': 'priority', '3': 7, '4': 1, '5': 14, '6': '.taskassignment.TaskPriority', '10': 'priority'},
    const {'1': 'starred', '3': 8, '4': 1, '5': 8, '10': 'starred'},
    const {'1': 'archived', '3': 9, '4': 1, '5': 8, '10': 'archived'},
    const {'1': 'shareRecord', '3': 10, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'postAction', '3': 11, '4': 1, '5': 9, '9': 1, '10': 'postAction', '17': true},
    const {'1': 'updateAt', '3': 12, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 13, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_categoryID'},
    const {'1': '_postAction'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetTaskAssignmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskAssignmentResponseDescriptor = $convert.base64Decode('ChlHZXRUYXNrQXNzaWdubWVudFJlc3BvbnNlEiIKDGFzc2lnbm1lbnRJZBgBIAEoA1IMYXNzaWdubWVudElkEhYKBnRhc2tJZBgCIAEoA1IGdGFza0lkEhwKCXByb2ZpbGVJZBgDIAEoA1IJcHJvZmlsZUlkEjwKBnN0YXR1cxgEIAEoDjIkLnRhc2thc3NpZ25tZW50LlRhc2tBc3NpZ25tZW50U3RhdHVzUgZzdGF0dXMSIwoKY2F0ZWdvcnlJRBgFIAEoA0gAUgpjYXRlZ29yeUlEiAEBEhYKBnRhZ0lEcxgGIAMoA1IGdGFnSURzEjgKCHByaW9yaXR5GAcgASgOMhwudGFza2Fzc2lnbm1lbnQuVGFza1ByaW9yaXR5Ughwcmlvcml0eRIYCgdzdGFycmVkGAggASgIUgdzdGFycmVkEhoKCGFyY2hpdmVkGAkgASgIUghhcmNoaXZlZBIgCgtzaGFyZVJlY29yZBgKIAEoCFILc2hhcmVSZWNvcmQSIwoKcG9zdEFjdGlvbhgLIAEoCUgBUgpwb3N0QWN0aW9uiAEBEhoKCHVwZGF0ZUF0GAwgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgNIAEoA0gCUghkZWxldGVBdIgBAUINCgtfY2F0ZWdvcnlJREINCgtfcG9zdEFjdGlvbkILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use modifyTaskAssignmentRequestDescriptor instead')
const ModifyTaskAssignmentRequest$json = const {
  '1': 'ModifyTaskAssignmentRequest',
  '2': const [
    const {'1': 'assignmentId', '3': 1, '4': 1, '5': 3, '10': 'assignmentId'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.taskassignment.TaskAssignmentStatus', '10': 'status'},
    const {'1': 'categoryID', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'categoryID', '17': true},
    const {'1': 'tagIDs', '3': 4, '4': 3, '5': 3, '10': 'tagIDs'},
    const {'1': 'priority', '3': 5, '4': 1, '5': 14, '6': '.taskassignment.TaskPriority', '10': 'priority'},
    const {'1': 'starred', '3': 6, '4': 1, '5': 8, '10': 'starred'},
    const {'1': 'archived', '3': 7, '4': 1, '5': 8, '10': 'archived'},
    const {'1': 'shareRecord', '3': 8, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'postAction', '3': 9, '4': 1, '5': 9, '9': 1, '10': 'postAction', '17': true},
    const {'1': 'updateAt', '3': 10, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 11, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_categoryID'},
    const {'1': '_postAction'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifyTaskAssignmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyTaskAssignmentRequestDescriptor = $convert.base64Decode('ChtNb2RpZnlUYXNrQXNzaWdubWVudFJlcXVlc3QSIgoMYXNzaWdubWVudElkGAEgASgDUgxhc3NpZ25tZW50SWQSPAoGc3RhdHVzGAIgASgOMiQudGFza2Fzc2lnbm1lbnQuVGFza0Fzc2lnbm1lbnRTdGF0dXNSBnN0YXR1cxIjCgpjYXRlZ29yeUlEGAMgASgDSABSCmNhdGVnb3J5SUSIAQESFgoGdGFnSURzGAQgAygDUgZ0YWdJRHMSOAoIcHJpb3JpdHkYBSABKA4yHC50YXNrYXNzaWdubWVudC5UYXNrUHJpb3JpdHlSCHByaW9yaXR5EhgKB3N0YXJyZWQYBiABKAhSB3N0YXJyZWQSGgoIYXJjaGl2ZWQYByABKAhSCGFyY2hpdmVkEiAKC3NoYXJlUmVjb3JkGAggASgIUgtzaGFyZVJlY29yZBIjCgpwb3N0QWN0aW9uGAkgASgJSAFSCnBvc3RBY3Rpb26IAQESGgoIdXBkYXRlQXQYCiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAsgASgDSAJSCGRlbGV0ZUF0iAEBQg0KC19jYXRlZ29yeUlEQg0KC19wb3N0QWN0aW9uQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use modifyTaskAssignmentResponseDescriptor instead')
const ModifyTaskAssignmentResponse$json = const {
  '1': 'ModifyTaskAssignmentResponse',
  '2': const [
    const {'1': 'assignmentId', '3': 1, '4': 1, '5': 3, '10': 'assignmentId'},
  ],
};

/// Descriptor for `ModifyTaskAssignmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyTaskAssignmentResponseDescriptor = $convert.base64Decode('ChxNb2RpZnlUYXNrQXNzaWdubWVudFJlc3BvbnNlEiIKDGFzc2lnbm1lbnRJZBgBIAEoA1IMYXNzaWdubWVudElk');
@$core.Deprecated('Use removeTaskAssignmentRequestDescriptor instead')
const RemoveTaskAssignmentRequest$json = const {
  '1': 'RemoveTaskAssignmentRequest',
  '2': const [
    const {'1': 'assignmentId', '3': 1, '4': 1, '5': 3, '10': 'assignmentId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveTaskAssignmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTaskAssignmentRequestDescriptor = $convert.base64Decode('ChtSZW1vdmVUYXNrQXNzaWdubWVudFJlcXVlc3QSIgoMYXNzaWdubWVudElkGAEgASgDUgxhc3NpZ25tZW50SWQSGgoIZGVsZXRlQXQYAiABKANSCGRlbGV0ZUF0');
@$core.Deprecated('Use removeTaskAssignmentResponseDescriptor instead')
const RemoveTaskAssignmentResponse$json = const {
  '1': 'RemoveTaskAssignmentResponse',
};

/// Descriptor for `RemoveTaskAssignmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTaskAssignmentResponseDescriptor = $convert.base64Decode('ChxSZW1vdmVUYXNrQXNzaWdubWVudFJlc3BvbnNl');
@$core.Deprecated('Use taskAssignmentInfoDescriptor instead')
const TaskAssignmentInfo$json = const {
  '1': 'TaskAssignmentInfo',
  '2': const [
    const {'1': 'assignmentId', '3': 1, '4': 1, '5': 3, '10': 'assignmentId'},
    const {'1': 'taskId', '3': 2, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'profileId', '3': 3, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.taskassignment.TaskAssignmentStatus', '10': 'status'},
    const {'1': 'categoryID', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'categoryID', '17': true},
    const {'1': 'tagIDs', '3': 6, '4': 3, '5': 3, '10': 'tagIDs'},
    const {'1': 'priority', '3': 7, '4': 1, '5': 14, '6': '.taskassignment.TaskPriority', '10': 'priority'},
    const {'1': 'starred', '3': 8, '4': 1, '5': 8, '10': 'starred'},
    const {'1': 'archived', '3': 9, '4': 1, '5': 8, '10': 'archived'},
    const {'1': 'shareRecord', '3': 10, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'postAction', '3': 11, '4': 1, '5': 9, '9': 1, '10': 'postAction', '17': true},
    const {'1': 'updateAt', '3': 12, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 13, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_categoryID'},
    const {'1': '_postAction'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `TaskAssignmentInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskAssignmentInfoDescriptor = $convert.base64Decode('ChJUYXNrQXNzaWdubWVudEluZm8SIgoMYXNzaWdubWVudElkGAEgASgDUgxhc3NpZ25tZW50SWQSFgoGdGFza0lkGAIgASgDUgZ0YXNrSWQSHAoJcHJvZmlsZUlkGAMgASgDUglwcm9maWxlSWQSPAoGc3RhdHVzGAQgASgOMiQudGFza2Fzc2lnbm1lbnQuVGFza0Fzc2lnbm1lbnRTdGF0dXNSBnN0YXR1cxIjCgpjYXRlZ29yeUlEGAUgASgDSABSCmNhdGVnb3J5SUSIAQESFgoGdGFnSURzGAYgAygDUgZ0YWdJRHMSOAoIcHJpb3JpdHkYByABKA4yHC50YXNrYXNzaWdubWVudC5UYXNrUHJpb3JpdHlSCHByaW9yaXR5EhgKB3N0YXJyZWQYCCABKAhSB3N0YXJyZWQSGgoIYXJjaGl2ZWQYCSABKAhSCGFyY2hpdmVkEiAKC3NoYXJlUmVjb3JkGAogASgIUgtzaGFyZVJlY29yZBIjCgpwb3N0QWN0aW9uGAsgASgJSAFSCnBvc3RBY3Rpb26IAQESGgoIdXBkYXRlQXQYDCABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GA0gASgDSAJSCGRlbGV0ZUF0iAEBQg0KC19jYXRlZ29yeUlEQg0KC19wb3N0QWN0aW9uQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use getAssignedTasksRequestDescriptor instead')
const GetAssignedTasksRequest$json = const {
  '1': 'GetAssignedTasksRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetAssignedTasksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssignedTasksRequestDescriptor = $convert.base64Decode('ChdHZXRBc3NpZ25lZFRhc2tzUmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBIlCgtsYXN0RmV0Y2hBdBgCIAEoA0gAUgtsYXN0RmV0Y2hBdIgBAUIOCgxfbGFzdEZldGNoQXQ=');
@$core.Deprecated('Use getAssignedTasksResponseDescriptor instead')
const GetAssignedTasksResponse$json = const {
  '1': 'GetAssignedTasksResponse',
  '2': const [
    const {'1': 'taskAssignments', '3': 1, '4': 3, '5': 11, '6': '.taskassignment.TaskAssignmentInfo', '10': 'taskAssignments'},
  ],
};

/// Descriptor for `GetAssignedTasksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssignedTasksResponseDescriptor = $convert.base64Decode('ChhHZXRBc3NpZ25lZFRhc2tzUmVzcG9uc2USTAoPdGFza0Fzc2lnbm1lbnRzGAEgAygLMiIudGFza2Fzc2lnbm1lbnQuVGFza0Fzc2lnbm1lbnRJbmZvUg90YXNrQXNzaWdubWVudHM=');
@$core.Deprecated('Use getUnassignedTasksRequestDescriptor instead')
const GetUnassignedTasksRequest$json = const {
  '1': 'GetUnassignedTasksRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
  ],
};

/// Descriptor for `GetUnassignedTasksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUnassignedTasksRequestDescriptor = $convert.base64Decode('ChlHZXRVbmFzc2lnbmVkVGFza3NSZXF1ZXN0EhwKCXByb2ZpbGVJZBgBIAEoA1IJcHJvZmlsZUlk');
@$core.Deprecated('Use getUnassignedTasksResponseDescriptor instead')
const GetUnassignedTasksResponse$json = const {
  '1': 'GetUnassignedTasksResponse',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 3, '5': 5, '10': 'taskId'},
  ],
};

/// Descriptor for `GetUnassignedTasksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUnassignedTasksResponseDescriptor = $convert.base64Decode('ChpHZXRVbmFzc2lnbmVkVGFza3NSZXNwb25zZRIWCgZ0YXNrSWQYASADKAVSBnRhc2tJZA==');
@$core.Deprecated('Use taskAssignmentInfoWithTaskInfoDescriptor instead')
const TaskAssignmentInfoWithTaskInfo$json = const {
  '1': 'TaskAssignmentInfoWithTaskInfo',
  '2': const [
    const {'1': 'assignmentInfo', '3': 1, '4': 1, '5': 11, '6': '.taskassignment.TaskAssignmentInfo', '10': 'assignmentInfo'},
    const {'1': 'taskInfo', '3': 2, '4': 1, '5': 11, '6': '.task.TaskInfo', '10': 'taskInfo'},
  ],
};

/// Descriptor for `TaskAssignmentInfoWithTaskInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskAssignmentInfoWithTaskInfoDescriptor = $convert.base64Decode('Ch5UYXNrQXNzaWdubWVudEluZm9XaXRoVGFza0luZm8SSgoOYXNzaWdubWVudEluZm8YASABKAsyIi50YXNrYXNzaWdubWVudC5UYXNrQXNzaWdubWVudEluZm9SDmFzc2lnbm1lbnRJbmZvEioKCHRhc2tJbmZvGAIgASgLMg4udGFzay5UYXNrSW5mb1IIdGFza0luZm8=');
@$core.Deprecated('Use getAssignedTasksWithTaskInfoRequestDescriptor instead')
const GetAssignedTasksWithTaskInfoRequest$json = const {
  '1': 'GetAssignedTasksWithTaskInfoRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetAssignedTasksWithTaskInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssignedTasksWithTaskInfoRequestDescriptor = $convert.base64Decode('CiNHZXRBc3NpZ25lZFRhc2tzV2l0aFRhc2tJbmZvUmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBIlCgtsYXN0RmV0Y2hBdBgCIAEoA0gAUgtsYXN0RmV0Y2hBdIgBAUIOCgxfbGFzdEZldGNoQXQ=');
@$core.Deprecated('Use getAssignedTasksWithTaskInfoResponseDescriptor instead')
const GetAssignedTasksWithTaskInfoResponse$json = const {
  '1': 'GetAssignedTasksWithTaskInfoResponse',
  '2': const [
    const {'1': 'taskAssignments', '3': 1, '4': 3, '5': 11, '6': '.taskassignment.TaskAssignmentInfoWithTaskInfo', '10': 'taskAssignments'},
  ],
};

/// Descriptor for `GetAssignedTasksWithTaskInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssignedTasksWithTaskInfoResponseDescriptor = $convert.base64Decode('CiRHZXRBc3NpZ25lZFRhc2tzV2l0aFRhc2tJbmZvUmVzcG9uc2USWAoPdGFza0Fzc2lnbm1lbnRzGAEgAygLMi4udGFza2Fzc2lnbm1lbnQuVGFza0Fzc2lnbm1lbnRJbmZvV2l0aFRhc2tJbmZvUg90YXNrQXNzaWdubWVudHM=');
