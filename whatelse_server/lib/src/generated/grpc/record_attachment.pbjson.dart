///
//  Generated code. Do not modify.
//  source: record_attachment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use recordAttachmentInfoDescriptor instead')
const RecordAttachmentInfo$json = const {
  '1': 'RecordAttachmentInfo',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'record', '3': 3, '4': 1, '5': 11, '6': '.record.RecordInfo', '10': 'record'},
    const {'1': 'updateAt', '3': 4, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `RecordAttachmentInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordAttachmentInfoDescriptor = $convert.base64Decode('ChRSZWNvcmRBdHRhY2htZW50SW5mbxISCgRoYXNoGAEgASgJUgRoYXNoEhIKBG5hbWUYAiABKAlSBG5hbWUSKgoGcmVjb3JkGAMgASgLMhIucmVjb3JkLlJlY29yZEluZm9SBnJlY29yZBIaCgh1cGRhdGVBdBgEIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYBSABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use recordAttachmentListDescriptor instead')
const RecordAttachmentList$json = const {
  '1': 'RecordAttachmentList',
  '2': const [
    const {'1': 'recordAttachments', '3': 1, '4': 3, '5': 11, '6': '.record_attachment.RecordAttachmentInfo', '10': 'recordAttachments'},
  ],
};

/// Descriptor for `RecordAttachmentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordAttachmentListDescriptor = $convert.base64Decode('ChRSZWNvcmRBdHRhY2htZW50TGlzdBJVChFyZWNvcmRBdHRhY2htZW50cxgBIAMoCzInLnJlY29yZF9hdHRhY2htZW50LlJlY29yZEF0dGFjaG1lbnRJbmZvUhFyZWNvcmRBdHRhY2htZW50cw==');
@$core.Deprecated('Use recordAttachmentStreamDescriptor instead')
const RecordAttachmentStream$json = const {
  '1': 'RecordAttachmentStream',
  '2': const [
    const {'1': 'recordAttachmentInfo', '3': 1, '4': 1, '5': 11, '6': '.record_attachment.RecordAttachmentInfo', '9': 0, '10': 'recordAttachmentInfo'},
    const {'1': 'bytes', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'bytes'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `RecordAttachmentStream`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordAttachmentStreamDescriptor = $convert.base64Decode('ChZSZWNvcmRBdHRhY2htZW50U3RyZWFtEl0KFHJlY29yZEF0dGFjaG1lbnRJbmZvGAEgASgLMicucmVjb3JkX2F0dGFjaG1lbnQuUmVjb3JkQXR0YWNobWVudEluZm9IAFIUcmVjb3JkQXR0YWNobWVudEluZm8SFgoFYnl0ZXMYAiABKAxIAFIFYnl0ZXNCBgoEZGF0YQ==');
@$core.Deprecated('Use recordAttachmentIdentifierDescriptor instead')
const RecordAttachmentIdentifier$json = const {
  '1': 'RecordAttachmentIdentifier',
  '2': const [
    const {'1': 'sessionUuid', '3': 1, '4': 1, '5': 9, '10': 'sessionUuid'},
    const {'1': 'taskUuid', '3': 2, '4': 1, '5': 9, '10': 'taskUuid'},
    const {'1': 'userId', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'profileName', '3': 4, '4': 1, '5': 9, '10': 'profileName'},
    const {'1': 'recordIndex', '3': 5, '4': 1, '5': 5, '10': 'recordIndex'},
  ],
};

/// Descriptor for `RecordAttachmentIdentifier`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordAttachmentIdentifierDescriptor = $convert.base64Decode('ChpSZWNvcmRBdHRhY2htZW50SWRlbnRpZmllchIgCgtzZXNzaW9uVXVpZBgBIAEoCVILc2Vzc2lvblV1aWQSGgoIdGFza1V1aWQYAiABKAlSCHRhc2tVdWlkEhYKBnVzZXJJZBgDIAEoBVIGdXNlcklkEiAKC3Byb2ZpbGVOYW1lGAQgASgJUgtwcm9maWxlTmFtZRIgCgtyZWNvcmRJbmRleBgFIAEoBVILcmVjb3JkSW5kZXg=');
@$core.Deprecated('Use recordAttachmentBytesDescriptor instead')
const RecordAttachmentBytes$json = const {
  '1': 'RecordAttachmentBytes',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 12, '10': 'bytes'},
  ],
};

/// Descriptor for `RecordAttachmentBytes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordAttachmentBytesDescriptor = $convert.base64Decode('ChVSZWNvcmRBdHRhY2htZW50Qnl0ZXMSFAoFYnl0ZXMYASABKAxSBWJ5dGVz');
