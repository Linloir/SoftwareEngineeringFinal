///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use taskInfoDescriptor instead')
const TaskInfo$json = const {
  '1': 'TaskInfo',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'location', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'location', '17': true},
    const {'1': 'requireLocation', '3': 6, '4': 1, '5': 8, '10': 'requireLocation'},
    const {'1': 'requireTime', '3': 7, '4': 1, '5': 8, '10': 'requireTime'},
    const {'1': 'requireAttachment', '3': 8, '4': 1, '5': 8, '10': 'requireAttachment'},
    const {'1': 'owner', '3': 9, '4': 1, '5': 11, '6': '.profile.ProfileInfo', '10': 'owner'},
    const {'1': 'parentTask', '3': 10, '4': 1, '5': 11, '6': '.task.TaskInfo', '9': 1, '10': 'parentTask', '17': true},
    const {'1': 'channels', '3': 11, '4': 3, '5': 11, '6': '.channel.ChannelInfo', '10': 'channels'},
    const {'1': 'updateAt', '3': 12, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 13, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_location'},
    const {'1': '_parentTask'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `TaskInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskInfoDescriptor = $convert.base64Decode('CghUYXNrSW5mbxISCgR1dWlkGAEgASgJUgR1dWlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRISCgRkZXNjGAMgASgJUgRkZXNjEhgKB2NvbnRlbnQYBCABKAlSB2NvbnRlbnQSHwoIbG9jYXRpb24YBSABKAlIAFIIbG9jYXRpb26IAQESKAoPcmVxdWlyZUxvY2F0aW9uGAYgASgIUg9yZXF1aXJlTG9jYXRpb24SIAoLcmVxdWlyZVRpbWUYByABKAhSC3JlcXVpcmVUaW1lEiwKEXJlcXVpcmVBdHRhY2htZW50GAggASgIUhFyZXF1aXJlQXR0YWNobWVudBIqCgVvd25lchgJIAEoCzIULnByb2ZpbGUuUHJvZmlsZUluZm9SBW93bmVyEjMKCnBhcmVudFRhc2sYCiABKAsyDi50YXNrLlRhc2tJbmZvSAFSCnBhcmVudFRhc2uIAQESMAoIY2hhbm5lbHMYCyADKAsyFC5jaGFubmVsLkNoYW5uZWxJbmZvUghjaGFubmVscxIaCgh1cGRhdGVBdBgMIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYDSABKANIAlIIZGVsZXRlQXSIAQFCCwoJX2xvY2F0aW9uQg0KC19wYXJlbnRUYXNrQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use taskListDescriptor instead')
const TaskList$json = const {
  '1': 'TaskList',
  '2': const [
    const {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.task.TaskInfo', '10': 'tasks'},
  ],
};

/// Descriptor for `TaskList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskListDescriptor = $convert.base64Decode('CghUYXNrTGlzdBIkCgV0YXNrcxgBIAMoCzIOLnRhc2suVGFza0luZm9SBXRhc2tz');
