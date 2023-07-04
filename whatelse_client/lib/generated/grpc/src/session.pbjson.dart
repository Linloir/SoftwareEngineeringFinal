///
//  Generated code. Do not modify.
//  source: session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createSessionRequestDescriptor instead')
const CreateSessionRequest$json = const {
  '1': 'CreateSessionRequest',
  '2': const [
    const {'1': 'parentId', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'parentId', '17': true},
    const {'1': 'taskId', '3': 2, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'start', '3': 3, '4': 1, '5': 3, '10': 'start'},
    const {'1': 'end', '3': 4, '4': 1, '5': 3, '10': 'end'},
    const {'1': 'cycle', '3': 5, '4': 1, '5': 5, '10': 'cycle'},
    const {'1': 'dupCount', '3': 6, '4': 1, '5': 5, '10': 'dupCount'},
    const {'1': 'updateAt', '3': 7, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 8, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_parentId'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVTZXNzaW9uUmVxdWVzdBIfCghwYXJlbnRJZBgBIAEoA0gAUghwYXJlbnRJZIgBARIWCgZ0YXNrSWQYAiABKANSBnRhc2tJZBIUCgVzdGFydBgDIAEoA1IFc3RhcnQSEAoDZW5kGAQgASgDUgNlbmQSFAoFY3ljbGUYBSABKAVSBWN5Y2xlEhoKCGR1cENvdW50GAYgASgFUghkdXBDb3VudBIaCgh1cGRhdGVBdBgHIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYCCABKANIAVIIZGVsZXRlQXSIAQFCCwoJX3BhcmVudElkQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use createSessionResponseDescriptor instead')
const CreateSessionResponse$json = const {
  '1': 'CreateSessionResponse',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
  ],
};

/// Descriptor for `CreateSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionResponseDescriptor = $convert.base64Decode('ChVDcmVhdGVTZXNzaW9uUmVzcG9uc2USHAoJc2Vzc2lvbklkGAEgASgDUglzZXNzaW9uSWQ=');
@$core.Deprecated('Use modifySessionRequestDescriptor instead')
const ModifySessionRequest$json = const {
  '1': 'ModifySessionRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'parentId', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'parentId', '17': true},
    const {'1': 'start', '3': 3, '4': 1, '5': 3, '10': 'start'},
    const {'1': 'end', '3': 4, '4': 1, '5': 3, '10': 'end'},
    const {'1': 'cycle', '3': 5, '4': 1, '5': 5, '10': 'cycle'},
    const {'1': 'dupCount', '3': 6, '4': 1, '5': 5, '10': 'dupCount'},
    const {'1': 'updateAt', '3': 7, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 8, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_parentId'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifySessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifySessionRequestDescriptor = $convert.base64Decode('ChRNb2RpZnlTZXNzaW9uUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKANSCXNlc3Npb25JZBIfCghwYXJlbnRJZBgCIAEoA0gAUghwYXJlbnRJZIgBARIUCgVzdGFydBgDIAEoA1IFc3RhcnQSEAoDZW5kGAQgASgDUgNlbmQSFAoFY3ljbGUYBSABKAVSBWN5Y2xlEhoKCGR1cENvdW50GAYgASgFUghkdXBDb3VudBIaCgh1cGRhdGVBdBgHIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYCCABKANIAVIIZGVsZXRlQXSIAQFCCwoJX3BhcmVudElkQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use modifySessionResponseDescriptor instead')
const ModifySessionResponse$json = const {
  '1': 'ModifySessionResponse',
};

/// Descriptor for `ModifySessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifySessionResponseDescriptor = $convert.base64Decode('ChVNb2RpZnlTZXNzaW9uUmVzcG9uc2U=');
@$core.Deprecated('Use getSessionRequestDescriptor instead')
const GetSessionRequest$json = const {
  '1': 'GetSessionRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionRequestDescriptor = $convert.base64Decode('ChFHZXRTZXNzaW9uUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKANSCXNlc3Npb25JZA==');
@$core.Deprecated('Use getSessionResponseDescriptor instead')
const GetSessionResponse$json = const {
  '1': 'GetSessionResponse',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'parentId', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'parentId', '17': true},
    const {'1': 'taskId', '3': 3, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'start', '3': 4, '4': 1, '5': 3, '10': 'start'},
    const {'1': 'end', '3': 5, '4': 1, '5': 3, '10': 'end'},
    const {'1': 'cycle', '3': 6, '4': 1, '5': 5, '10': 'cycle'},
    const {'1': 'dupCount', '3': 7, '4': 1, '5': 5, '10': 'dupCount'},
    const {'1': 'updateAt', '3': 8, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 9, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_parentId'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionResponseDescriptor = $convert.base64Decode('ChJHZXRTZXNzaW9uUmVzcG9uc2USHAoJc2Vzc2lvbklkGAEgASgDUglzZXNzaW9uSWQSHwoIcGFyZW50SWQYAiABKANIAFIIcGFyZW50SWSIAQESFgoGdGFza0lkGAMgASgDUgZ0YXNrSWQSFAoFc3RhcnQYBCABKANSBXN0YXJ0EhAKA2VuZBgFIAEoA1IDZW5kEhQKBWN5Y2xlGAYgASgFUgVjeWNsZRIaCghkdXBDb3VudBgHIAEoBVIIZHVwQ291bnQSGgoIdXBkYXRlQXQYCCABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAkgASgDSAFSCGRlbGV0ZUF0iAEBQgsKCV9wYXJlbnRJZEILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use sessionInfoDescriptor instead')
const SessionInfo$json = const {
  '1': 'SessionInfo',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'parentId', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'parentId', '17': true},
    const {'1': 'taskId', '3': 3, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'start', '3': 4, '4': 1, '5': 3, '10': 'start'},
    const {'1': 'end', '3': 5, '4': 1, '5': 3, '10': 'end'},
    const {'1': 'cycle', '3': 6, '4': 1, '5': 5, '10': 'cycle'},
    const {'1': 'dupCount', '3': 7, '4': 1, '5': 5, '10': 'dupCount'},
    const {'1': 'updateAt', '3': 8, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 9, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_parentId'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `SessionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionInfoDescriptor = $convert.base64Decode('CgtTZXNzaW9uSW5mbxIcCglzZXNzaW9uSWQYASABKANSCXNlc3Npb25JZBIfCghwYXJlbnRJZBgCIAEoA0gAUghwYXJlbnRJZIgBARIWCgZ0YXNrSWQYAyABKANSBnRhc2tJZBIUCgVzdGFydBgEIAEoA1IFc3RhcnQSEAoDZW5kGAUgASgDUgNlbmQSFAoFY3ljbGUYBiABKAVSBWN5Y2xlEhoKCGR1cENvdW50GAcgASgFUghkdXBDb3VudBIaCgh1cGRhdGVBdBgIIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYCSABKANIAVIIZGVsZXRlQXSIAQFCCwoJX3BhcmVudElkQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use getSessionListRequestDescriptor instead')
const GetSessionListRequest$json = const {
  '1': 'GetSessionListRequest',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetSessionListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionListRequestDescriptor = $convert.base64Decode('ChVHZXRTZXNzaW9uTGlzdFJlcXVlc3QSFgoGdGFza0lkGAEgASgDUgZ0YXNrSWQSJQoLbGFzdEZldGNoQXQYAiABKANIAFILbGFzdEZldGNoQXSIAQFCDgoMX2xhc3RGZXRjaEF0');
@$core.Deprecated('Use getSessionListResponseDescriptor instead')
const GetSessionListResponse$json = const {
  '1': 'GetSessionListResponse',
  '2': const [
    const {'1': 'sessionList', '3': 1, '4': 3, '5': 11, '6': '.session.SessionInfo', '10': 'sessionList'},
  ],
};

/// Descriptor for `GetSessionListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionListResponseDescriptor = $convert.base64Decode('ChZHZXRTZXNzaW9uTGlzdFJlc3BvbnNlEjYKC3Nlc3Npb25MaXN0GAEgAygLMhQuc2Vzc2lvbi5TZXNzaW9uSW5mb1ILc2Vzc2lvbkxpc3Q=');
@$core.Deprecated('Use removeSessionRequestDescriptor instead')
const RemoveSessionRequest$json = const {
  '1': 'RemoveSessionRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSessionRequestDescriptor = $convert.base64Decode('ChRSZW1vdmVTZXNzaW9uUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKANSCXNlc3Npb25JZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeSessionResponseDescriptor instead')
const RemoveSessionResponse$json = const {
  '1': 'RemoveSessionResponse',
};

/// Descriptor for `RemoveSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSessionResponseDescriptor = $convert.base64Decode('ChVSZW1vdmVTZXNzaW9uUmVzcG9uc2U=');
@$core.Deprecated('Use attachmentMetaDataDescriptor instead')
const AttachmentMetaData$json = const {
  '1': 'AttachmentMetaData',
  '2': const [
    const {'1': 'attachmentId', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'attachmentId', '17': true},
    const {'1': 'recordId', '3': 2, '4': 1, '5': 3, '10': 'recordId'},
    const {'1': 'hash', '3': 3, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_attachmentId'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `AttachmentMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachmentMetaDataDescriptor = $convert.base64Decode('ChJBdHRhY2htZW50TWV0YURhdGESJwoMYXR0YWNobWVudElkGAEgASgDSABSDGF0dGFjaG1lbnRJZIgBARIaCghyZWNvcmRJZBgCIAEoA1IIcmVjb3JkSWQSEgoEaGFzaBgDIAEoCVIEaGFzaBISCgRuYW1lGAQgASgJUgRuYW1lEhoKCHVwZGF0ZUF0GAUgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgGIAEoA0gBUghkZWxldGVBdIgBAUIPCg1fYXR0YWNobWVudElkQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use uploadAttachmentRequestDescriptor instead')
const UploadAttachmentRequest$json = const {
  '1': 'UploadAttachmentRequest',
  '2': const [
    const {'1': 'metaData', '3': 1, '4': 1, '5': 11, '6': '.session.AttachmentMetaData', '9': 0, '10': 'metaData'},
    const {'1': 'chunk', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'chunk'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `UploadAttachmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadAttachmentRequestDescriptor = $convert.base64Decode('ChdVcGxvYWRBdHRhY2htZW50UmVxdWVzdBI5CghtZXRhRGF0YRgBIAEoCzIbLnNlc3Npb24uQXR0YWNobWVudE1ldGFEYXRhSABSCG1ldGFEYXRhEhYKBWNodW5rGAIgASgMSABSBWNodW5rQgYKBGRhdGE=');
@$core.Deprecated('Use uploadAttachmentResponseDescriptor instead')
const UploadAttachmentResponse$json = const {
  '1': 'UploadAttachmentResponse',
  '2': const [
    const {'1': 'attachmentId', '3': 1, '4': 1, '5': 3, '10': 'attachmentId'},
  ],
};

/// Descriptor for `UploadAttachmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadAttachmentResponseDescriptor = $convert.base64Decode('ChhVcGxvYWRBdHRhY2htZW50UmVzcG9uc2USIgoMYXR0YWNobWVudElkGAEgASgDUgxhdHRhY2htZW50SWQ=');
@$core.Deprecated('Use getAttachmentRequestDescriptor instead')
const GetAttachmentRequest$json = const {
  '1': 'GetAttachmentRequest',
  '2': const [
    const {'1': 'attachmentId', '3': 1, '4': 1, '5': 3, '10': 'attachmentId'},
  ],
};

/// Descriptor for `GetAttachmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachmentRequestDescriptor = $convert.base64Decode('ChRHZXRBdHRhY2htZW50UmVxdWVzdBIiCgxhdHRhY2htZW50SWQYASABKANSDGF0dGFjaG1lbnRJZA==');
@$core.Deprecated('Use getAttachmentResponseDescriptor instead')
const GetAttachmentResponse$json = const {
  '1': 'GetAttachmentResponse',
  '2': const [
    const {'1': 'metaData', '3': 1, '4': 1, '5': 11, '6': '.session.AttachmentMetaData', '9': 0, '10': 'metaData'},
    const {'1': 'chunk', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'chunk'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `GetAttachmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachmentResponseDescriptor = $convert.base64Decode('ChVHZXRBdHRhY2htZW50UmVzcG9uc2USOQoIbWV0YURhdGEYASABKAsyGy5zZXNzaW9uLkF0dGFjaG1lbnRNZXRhRGF0YUgAUghtZXRhRGF0YRIWCgVjaHVuaxgCIAEoDEgAUgVjaHVua0IGCgRkYXRh');
@$core.Deprecated('Use removeAttachmentRequestDescriptor instead')
const RemoveAttachmentRequest$json = const {
  '1': 'RemoveAttachmentRequest',
  '2': const [
    const {'1': 'attachmentId', '3': 1, '4': 1, '5': 3, '10': 'attachmentId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveAttachmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeAttachmentRequestDescriptor = $convert.base64Decode('ChdSZW1vdmVBdHRhY2htZW50UmVxdWVzdBIiCgxhdHRhY2htZW50SWQYASABKANSDGF0dGFjaG1lbnRJZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeAttachmentResponseDescriptor instead')
const RemoveAttachmentResponse$json = const {
  '1': 'RemoveAttachmentResponse',
};

/// Descriptor for `RemoveAttachmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeAttachmentResponseDescriptor = $convert.base64Decode('ChhSZW1vdmVBdHRhY2htZW50UmVzcG9uc2U=');
@$core.Deprecated('Use createRecordRequestDescriptor instead')
const CreateRecordRequest$json = const {
  '1': 'CreateRecordRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'dupIndex', '3': 4, '4': 1, '5': 5, '10': 'dupIndex'},
    const {'1': 'taskDue', '3': 5, '4': 1, '5': 3, '10': 'taskDue'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRecordRequestDescriptor = $convert.base64Decode('ChNDcmVhdGVSZWNvcmRSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoA1IJc2Vzc2lvbklkEhwKCXByb2ZpbGVJZBgCIAEoA1IJcHJvZmlsZUlkEhIKBHRpbWUYAyABKANSBHRpbWUSGgoIZHVwSW5kZXgYBCABKAVSCGR1cEluZGV4EhgKB3Rhc2tEdWUYBSABKANSB3Rhc2tEdWUSGgoIdXBkYXRlQXQYBiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAcgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use createRecordResponseDescriptor instead')
const CreateRecordResponse$json = const {
  '1': 'CreateRecordResponse',
  '2': const [
    const {'1': 'recordId', '3': 1, '4': 1, '5': 3, '10': 'recordId'},
  ],
};

/// Descriptor for `CreateRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRecordResponseDescriptor = $convert.base64Decode('ChRDcmVhdGVSZWNvcmRSZXNwb25zZRIaCghyZWNvcmRJZBgBIAEoA1IIcmVjb3JkSWQ=');
@$core.Deprecated('Use getRecordRequestDescriptor instead')
const GetRecordRequest$json = const {
  '1': 'GetRecordRequest',
  '2': const [
    const {'1': 'recordId', '3': 1, '4': 1, '5': 3, '10': 'recordId'},
  ],
};

/// Descriptor for `GetRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecordRequestDescriptor = $convert.base64Decode('ChBHZXRSZWNvcmRSZXF1ZXN0EhoKCHJlY29yZElkGAEgASgDUghyZWNvcmRJZA==');
@$core.Deprecated('Use getRecordResponseDescriptor instead')
const GetRecordResponse$json = const {
  '1': 'GetRecordResponse',
  '2': const [
    const {'1': 'recordId', '3': 1, '4': 1, '5': 3, '10': 'recordId'},
    const {'1': 'sessionId', '3': 2, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'profileId', '3': 3, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'time', '3': 4, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'dupIndex', '3': 5, '4': 1, '5': 5, '10': 'dupIndex'},
    const {'1': 'taskDue', '3': 6, '4': 1, '5': 3, '10': 'taskDue'},
    const {'1': 'updateAt', '3': 7, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 8, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecordResponseDescriptor = $convert.base64Decode('ChFHZXRSZWNvcmRSZXNwb25zZRIaCghyZWNvcmRJZBgBIAEoA1IIcmVjb3JkSWQSHAoJc2Vzc2lvbklkGAIgASgDUglzZXNzaW9uSWQSHAoJcHJvZmlsZUlkGAMgASgDUglwcm9maWxlSWQSEgoEdGltZRgEIAEoA1IEdGltZRIaCghkdXBJbmRleBgFIAEoBVIIZHVwSW5kZXgSGAoHdGFza0R1ZRgGIAEoA1IHdGFza0R1ZRIaCgh1cGRhdGVBdBgHIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYCCABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use modifyRecordRequestDescriptor instead')
const ModifyRecordRequest$json = const {
  '1': 'ModifyRecordRequest',
  '2': const [
    const {'1': 'recordId', '3': 1, '4': 1, '5': 3, '10': 'recordId'},
    const {'1': 'time', '3': 2, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'dupIndex', '3': 3, '4': 1, '5': 5, '10': 'dupIndex'},
    const {'1': 'taskDue', '3': 4, '4': 1, '5': 3, '10': 'taskDue'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifyRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyRecordRequestDescriptor = $convert.base64Decode('ChNNb2RpZnlSZWNvcmRSZXF1ZXN0EhoKCHJlY29yZElkGAEgASgDUghyZWNvcmRJZBISCgR0aW1lGAIgASgDUgR0aW1lEhoKCGR1cEluZGV4GAMgASgFUghkdXBJbmRleBIYCgd0YXNrRHVlGAQgASgDUgd0YXNrRHVlEhoKCHVwZGF0ZUF0GAUgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgGIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use modifyRecordResponseDescriptor instead')
const ModifyRecordResponse$json = const {
  '1': 'ModifyRecordResponse',
};

/// Descriptor for `ModifyRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyRecordResponseDescriptor = $convert.base64Decode('ChRNb2RpZnlSZWNvcmRSZXNwb25zZQ==');
@$core.Deprecated('Use recordInfoDescriptor instead')
const RecordInfo$json = const {
  '1': 'RecordInfo',
  '2': const [
    const {'1': 'recordId', '3': 1, '4': 1, '5': 3, '10': 'recordId'},
    const {'1': 'sessionId', '3': 2, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'profileId', '3': 3, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'time', '3': 4, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'dupIndex', '3': 5, '4': 1, '5': 5, '10': 'dupIndex'},
    const {'1': 'taskDue', '3': 6, '4': 1, '5': 3, '10': 'taskDue'},
    const {'1': 'updateAt', '3': 7, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 8, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `RecordInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordInfoDescriptor = $convert.base64Decode('CgpSZWNvcmRJbmZvEhoKCHJlY29yZElkGAEgASgDUghyZWNvcmRJZBIcCglzZXNzaW9uSWQYAiABKANSCXNlc3Npb25JZBIcCglwcm9maWxlSWQYAyABKANSCXByb2ZpbGVJZBISCgR0aW1lGAQgASgDUgR0aW1lEhoKCGR1cEluZGV4GAUgASgFUghkdXBJbmRleBIYCgd0YXNrRHVlGAYgASgDUgd0YXNrRHVlEhoKCHVwZGF0ZUF0GAcgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgIIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use getRecordListRequestDescriptor instead')
const GetRecordListRequest$json = const {
  '1': 'GetRecordListRequest',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetRecordListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecordListRequestDescriptor = $convert.base64Decode('ChRHZXRSZWNvcmRMaXN0UmVxdWVzdBIcCglzZXNzaW9uSWQYASABKANSCXNlc3Npb25JZBIcCglwcm9maWxlSWQYAiABKANSCXByb2ZpbGVJZBIlCgtsYXN0RmV0Y2hBdBgDIAEoA0gAUgtsYXN0RmV0Y2hBdIgBAUIOCgxfbGFzdEZldGNoQXQ=');
@$core.Deprecated('Use getRecordListResponseDescriptor instead')
const GetRecordListResponse$json = const {
  '1': 'GetRecordListResponse',
  '2': const [
    const {'1': 'recordList', '3': 1, '4': 3, '5': 11, '6': '.session.RecordInfo', '10': 'recordList'},
  ],
};

/// Descriptor for `GetRecordListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecordListResponseDescriptor = $convert.base64Decode('ChVHZXRSZWNvcmRMaXN0UmVzcG9uc2USMwoKcmVjb3JkTGlzdBgBIAMoCzITLnNlc3Npb24uUmVjb3JkSW5mb1IKcmVjb3JkTGlzdA==');
@$core.Deprecated('Use taskRecordInfoDescriptor instead')
const TaskRecordInfo$json = const {
  '1': 'TaskRecordInfo',
  '2': const [
    const {'1': 'sessionId', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    const {'1': 'recordList', '3': 2, '4': 3, '5': 11, '6': '.session.RecordInfo', '10': 'recordList'},
  ],
};

/// Descriptor for `TaskRecordInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskRecordInfoDescriptor = $convert.base64Decode('Cg5UYXNrUmVjb3JkSW5mbxIcCglzZXNzaW9uSWQYASABKANSCXNlc3Npb25JZBIzCgpyZWNvcmRMaXN0GAIgAygLMhMuc2Vzc2lvbi5SZWNvcmRJbmZvUgpyZWNvcmRMaXN0');
@$core.Deprecated('Use getTaskRecordListRequestDescriptor instead')
const GetTaskRecordListRequest$json = const {
  '1': 'GetTaskRecordListRequest',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetTaskRecordListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRecordListRequestDescriptor = $convert.base64Decode('ChhHZXRUYXNrUmVjb3JkTGlzdFJlcXVlc3QSFgoGdGFza0lkGAEgASgDUgZ0YXNrSWQSHAoJcHJvZmlsZUlkGAIgASgDUglwcm9maWxlSWQSJQoLbGFzdEZldGNoQXQYAyABKANIAFILbGFzdEZldGNoQXSIAQFCDgoMX2xhc3RGZXRjaEF0');
@$core.Deprecated('Use getTaskRecordListResponseDescriptor instead')
const GetTaskRecordListResponse$json = const {
  '1': 'GetTaskRecordListResponse',
  '2': const [
    const {'1': 'sessionList', '3': 1, '4': 3, '5': 11, '6': '.session.TaskRecordInfo', '10': 'sessionList'},
  ],
};

/// Descriptor for `GetTaskRecordListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRecordListResponseDescriptor = $convert.base64Decode('ChlHZXRUYXNrUmVjb3JkTGlzdFJlc3BvbnNlEjkKC3Nlc3Npb25MaXN0GAEgAygLMhcuc2Vzc2lvbi5UYXNrUmVjb3JkSW5mb1ILc2Vzc2lvbkxpc3Q=');
@$core.Deprecated('Use removeRecordRequestDescriptor instead')
const RemoveRecordRequest$json = const {
  '1': 'RemoveRecordRequest',
  '2': const [
    const {'1': 'recordId', '3': 1, '4': 1, '5': 3, '10': 'recordId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeRecordRequestDescriptor = $convert.base64Decode('ChNSZW1vdmVSZWNvcmRSZXF1ZXN0EhoKCHJlY29yZElkGAEgASgDUghyZWNvcmRJZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeRecordResponseDescriptor instead')
const RemoveRecordResponse$json = const {
  '1': 'RemoveRecordResponse',
};

/// Descriptor for `RemoveRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeRecordResponseDescriptor = $convert.base64Decode('ChRSZW1vdmVSZWNvcmRSZXNwb25zZQ==');
