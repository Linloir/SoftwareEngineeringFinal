///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = const {
  '1': 'CreateTaskRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'parentId', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'parentId', '17': true},
    const {'1': 'channelIds', '3': 3, '4': 3, '5': 3, '10': 'channelIds'},
    const {'1': 'inherited', '3': 4, '4': 1, '5': 8, '10': 'inherited'},
    const {'1': 'periodic', '3': 5, '4': 1, '5': 8, '10': 'periodic'},
    const {'1': 'title', '3': 6, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 7, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'location', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'location', '17': true},
    const {'1': 'content', '3': 9, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'specLoc', '3': 10, '4': 1, '5': 8, '10': 'specLoc'},
    const {'1': 'specTime', '3': 11, '4': 1, '5': 8, '10': 'specTime'},
    const {'1': 'specAtt', '3': 12, '4': 1, '5': 8, '10': 'specAtt'},
    const {'1': 'updateAt', '3': 13, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 14, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_parentId'},
    const {'1': '_location'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUYXNrUmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBIfCghwYXJlbnRJZBgCIAEoA0gAUghwYXJlbnRJZIgBARIeCgpjaGFubmVsSWRzGAMgAygDUgpjaGFubmVsSWRzEhwKCWluaGVyaXRlZBgEIAEoCFIJaW5oZXJpdGVkEhoKCHBlcmlvZGljGAUgASgIUghwZXJpb2RpYxIUCgV0aXRsZRgGIAEoCVIFdGl0bGUSEgoEZGVzYxgHIAEoCVIEZGVzYxIfCghsb2NhdGlvbhgIIAEoCUgBUghsb2NhdGlvbogBARIYCgdjb250ZW50GAkgASgJUgdjb250ZW50EhgKB3NwZWNMb2MYCiABKAhSB3NwZWNMb2MSGgoIc3BlY1RpbWUYCyABKAhSCHNwZWNUaW1lEhgKB3NwZWNBdHQYDCABKAhSB3NwZWNBdHQSGgoIdXBkYXRlQXQYDSABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GA4gASgDSAJSCGRlbGV0ZUF0iAEBQgsKCV9wYXJlbnRJZEILCglfbG9jYXRpb25CCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use createTaskResponseDescriptor instead')
const CreateTaskResponse$json = const {
  '1': 'CreateTaskResponse',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
  ],
};

/// Descriptor for `CreateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVUYXNrUmVzcG9uc2USFgoGdGFza0lkGAEgASgDUgZ0YXNrSWQ=');
@$core.Deprecated('Use taskInfoDescriptor instead')
const TaskInfo$json = const {
  '1': 'TaskInfo',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'parentId', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'parentId', '17': true},
    const {'1': 'channelIds', '3': 3, '4': 3, '5': 3, '10': 'channelIds'},
    const {'1': 'inherited', '3': 4, '4': 1, '5': 8, '10': 'inherited'},
    const {'1': 'periodic', '3': 5, '4': 1, '5': 8, '10': 'periodic'},
    const {'1': 'ownerId', '3': 6, '4': 1, '5': 3, '10': 'ownerId'},
    const {'1': 'title', '3': 7, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 8, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'location', '3': 9, '4': 1, '5': 9, '9': 1, '10': 'location', '17': true},
    const {'1': 'content', '3': 10, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'specLoc', '3': 11, '4': 1, '5': 8, '10': 'specLoc'},
    const {'1': 'specTime', '3': 12, '4': 1, '5': 8, '10': 'specTime'},
    const {'1': 'specAtt', '3': 13, '4': 1, '5': 8, '10': 'specAtt'},
    const {'1': 'updateAt', '3': 14, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 15, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_parentId'},
    const {'1': '_location'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `TaskInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskInfoDescriptor = $convert.base64Decode('CghUYXNrSW5mbxIWCgZ0YXNrSWQYASABKANSBnRhc2tJZBIfCghwYXJlbnRJZBgCIAEoA0gAUghwYXJlbnRJZIgBARIeCgpjaGFubmVsSWRzGAMgAygDUgpjaGFubmVsSWRzEhwKCWluaGVyaXRlZBgEIAEoCFIJaW5oZXJpdGVkEhoKCHBlcmlvZGljGAUgASgIUghwZXJpb2RpYxIYCgdvd25lcklkGAYgASgDUgdvd25lcklkEhQKBXRpdGxlGAcgASgJUgV0aXRsZRISCgRkZXNjGAggASgJUgRkZXNjEh8KCGxvY2F0aW9uGAkgASgJSAFSCGxvY2F0aW9uiAEBEhgKB2NvbnRlbnQYCiABKAlSB2NvbnRlbnQSGAoHc3BlY0xvYxgLIAEoCFIHc3BlY0xvYxIaCghzcGVjVGltZRgMIAEoCFIIc3BlY1RpbWUSGAoHc3BlY0F0dBgNIAEoCFIHc3BlY0F0dBIaCgh1cGRhdGVBdBgOIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYDyABKANIAlIIZGVsZXRlQXSIAQFCCwoJX3BhcmVudElkQgsKCV9sb2NhdGlvbkILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use getTaskRequestDescriptor instead')
const GetTaskRequest$json = const {
  '1': 'GetTaskRequest',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
  ],
};

/// Descriptor for `GetTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRequestDescriptor = $convert.base64Decode('Cg5HZXRUYXNrUmVxdWVzdBIWCgZ0YXNrSWQYASABKANSBnRhc2tJZA==');
@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse$json = const {
  '1': 'GetTaskResponse',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'parentId', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'parentId', '17': true},
    const {'1': 'channelIds', '3': 3, '4': 3, '5': 3, '10': 'channelIds'},
    const {'1': 'inherited', '3': 4, '4': 1, '5': 8, '10': 'inherited'},
    const {'1': 'periodic', '3': 5, '4': 1, '5': 8, '10': 'periodic'},
    const {'1': 'ownerId', '3': 6, '4': 1, '5': 3, '10': 'ownerId'},
    const {'1': 'title', '3': 7, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 8, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'location', '3': 9, '4': 1, '5': 9, '9': 1, '10': 'location', '17': true},
    const {'1': 'content', '3': 10, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'specLoc', '3': 11, '4': 1, '5': 8, '10': 'specLoc'},
    const {'1': 'specTime', '3': 12, '4': 1, '5': 8, '10': 'specTime'},
    const {'1': 'specAtt', '3': 13, '4': 1, '5': 8, '10': 'specAtt'},
    const {'1': 'updateAt', '3': 14, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 15, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_parentId'},
    const {'1': '_location'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode('Cg9HZXRUYXNrUmVzcG9uc2USFgoGdGFza0lkGAEgASgDUgZ0YXNrSWQSHwoIcGFyZW50SWQYAiABKANIAFIIcGFyZW50SWSIAQESHgoKY2hhbm5lbElkcxgDIAMoA1IKY2hhbm5lbElkcxIcCglpbmhlcml0ZWQYBCABKAhSCWluaGVyaXRlZBIaCghwZXJpb2RpYxgFIAEoCFIIcGVyaW9kaWMSGAoHb3duZXJJZBgGIAEoA1IHb3duZXJJZBIUCgV0aXRsZRgHIAEoCVIFdGl0bGUSEgoEZGVzYxgIIAEoCVIEZGVzYxIfCghsb2NhdGlvbhgJIAEoCUgBUghsb2NhdGlvbogBARIYCgdjb250ZW50GAogASgJUgdjb250ZW50EhgKB3NwZWNMb2MYCyABKAhSB3NwZWNMb2MSGgoIc3BlY1RpbWUYDCABKAhSCHNwZWNUaW1lEhgKB3NwZWNBdHQYDSABKAhSB3NwZWNBdHQSGgoIdXBkYXRlQXQYDiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GA8gASgDSAJSCGRlbGV0ZUF0iAEBQgsKCV9wYXJlbnRJZEILCglfbG9jYXRpb25CCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use modifyTaskRequestDescriptor instead')
const ModifyTaskRequest$json = const {
  '1': 'ModifyTaskRequest',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'parentId', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'parentId', '17': true},
    const {'1': 'channelIds', '3': 3, '4': 3, '5': 3, '10': 'channelIds'},
    const {'1': 'inherited', '3': 4, '4': 1, '5': 8, '10': 'inherited'},
    const {'1': 'periodic', '3': 5, '4': 1, '5': 8, '10': 'periodic'},
    const {'1': 'title', '3': 6, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 7, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'location', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'location', '17': true},
    const {'1': 'content', '3': 9, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'specLoc', '3': 10, '4': 1, '5': 8, '10': 'specLoc'},
    const {'1': 'specTime', '3': 11, '4': 1, '5': 8, '10': 'specTime'},
    const {'1': 'specAtt', '3': 12, '4': 1, '5': 8, '10': 'specAtt'},
    const {'1': 'updateAt', '3': 13, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 14, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_parentId'},
    const {'1': '_location'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifyTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyTaskRequestDescriptor = $convert.base64Decode('ChFNb2RpZnlUYXNrUmVxdWVzdBIWCgZ0YXNrSWQYASABKANSBnRhc2tJZBIfCghwYXJlbnRJZBgCIAEoA0gAUghwYXJlbnRJZIgBARIeCgpjaGFubmVsSWRzGAMgAygDUgpjaGFubmVsSWRzEhwKCWluaGVyaXRlZBgEIAEoCFIJaW5oZXJpdGVkEhoKCHBlcmlvZGljGAUgASgIUghwZXJpb2RpYxIUCgV0aXRsZRgGIAEoCVIFdGl0bGUSEgoEZGVzYxgHIAEoCVIEZGVzYxIfCghsb2NhdGlvbhgIIAEoCUgBUghsb2NhdGlvbogBARIYCgdjb250ZW50GAkgASgJUgdjb250ZW50EhgKB3NwZWNMb2MYCiABKAhSB3NwZWNMb2MSGgoIc3BlY1RpbWUYCyABKAhSCHNwZWNUaW1lEhgKB3NwZWNBdHQYDCABKAhSB3NwZWNBdHQSGgoIdXBkYXRlQXQYDSABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GA4gASgDSAJSCGRlbGV0ZUF0iAEBQgsKCV9wYXJlbnRJZEILCglfbG9jYXRpb25CCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use modifyTaskResponseDescriptor instead')
const ModifyTaskResponse$json = const {
  '1': 'ModifyTaskResponse',
};

/// Descriptor for `ModifyTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyTaskResponseDescriptor = $convert.base64Decode('ChJNb2RpZnlUYXNrUmVzcG9uc2U=');
@$core.Deprecated('Use removeTaskRequestDescriptor instead')
const RemoveTaskRequest$json = const {
  '1': 'RemoveTaskRequest',
  '2': const [
    const {'1': 'taskId', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTaskRequestDescriptor = $convert.base64Decode('ChFSZW1vdmVUYXNrUmVxdWVzdBIWCgZ0YXNrSWQYASABKANSBnRhc2tJZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeTaskResponseDescriptor instead')
const RemoveTaskResponse$json = const {
  '1': 'RemoveTaskResponse',
};

/// Descriptor for `RemoveTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTaskResponseDescriptor = $convert.base64Decode('ChJSZW1vdmVUYXNrUmVzcG9uc2U=');
@$core.Deprecated('Use assetMetaDataDescriptor instead')
const AssetMetaData$json = const {
  '1': 'AssetMetaData',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'assetId', '17': true},
    const {'1': 'taskId', '3': 2, '4': 1, '5': 3, '10': 'taskId'},
    const {'1': 'hash', '3': 3, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'category', '3': 4, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 1, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_assetId'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `AssetMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetMetaDataDescriptor = $convert.base64Decode('Cg1Bc3NldE1ldGFEYXRhEh0KB2Fzc2V0SWQYASABKANIAFIHYXNzZXRJZIgBARIWCgZ0YXNrSWQYAiABKANSBnRhc2tJZBISCgRoYXNoGAMgASgJUgRoYXNoEhoKCGNhdGVnb3J5GAQgASgJUghjYXRlZ29yeRIaCgh1cGRhdGVBdBgFIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYBiABKANIAVIIZGVsZXRlQXSIAQFCCgoIX2Fzc2V0SWRCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use uploadAssetsRequestDescriptor instead')
const UploadAssetsRequest$json = const {
  '1': 'UploadAssetsRequest',
  '2': const [
    const {'1': 'metaData', '3': 1, '4': 1, '5': 11, '6': '.task.AssetMetaData', '9': 0, '10': 'metaData'},
    const {'1': 'chunk', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'chunk'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `UploadAssetsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadAssetsRequestDescriptor = $convert.base64Decode('ChNVcGxvYWRBc3NldHNSZXF1ZXN0EjEKCG1ldGFEYXRhGAEgASgLMhMudGFzay5Bc3NldE1ldGFEYXRhSABSCG1ldGFEYXRhEhYKBWNodW5rGAIgASgMSABSBWNodW5rQgYKBGRhdGE=');
@$core.Deprecated('Use uploadAssetsResponseDescriptor instead')
const UploadAssetsResponse$json = const {
  '1': 'UploadAssetsResponse',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 3, '10': 'assetId'},
  ],
};

/// Descriptor for `UploadAssetsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadAssetsResponseDescriptor = $convert.base64Decode('ChRVcGxvYWRBc3NldHNSZXNwb25zZRIYCgdhc3NldElkGAEgASgDUgdhc3NldElk');
@$core.Deprecated('Use getAssetsRequestDescriptor instead')
const GetAssetsRequest$json = const {
  '1': 'GetAssetsRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 3, '10': 'assetId'},
  ],
};

/// Descriptor for `GetAssetsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssetsRequestDescriptor = $convert.base64Decode('ChBHZXRBc3NldHNSZXF1ZXN0EhgKB2Fzc2V0SWQYASABKANSB2Fzc2V0SWQ=');
@$core.Deprecated('Use getAssetsResponseDescriptor instead')
const GetAssetsResponse$json = const {
  '1': 'GetAssetsResponse',
  '2': const [
    const {'1': 'metaData', '3': 1, '4': 1, '5': 11, '6': '.task.AssetMetaData', '9': 0, '10': 'metaData'},
    const {'1': 'chunk', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'chunk'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `GetAssetsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssetsResponseDescriptor = $convert.base64Decode('ChFHZXRBc3NldHNSZXNwb25zZRIxCghtZXRhRGF0YRgBIAEoCzITLnRhc2suQXNzZXRNZXRhRGF0YUgAUghtZXRhRGF0YRIWCgVjaHVuaxgCIAEoDEgAUgVjaHVua0IGCgRkYXRh');
@$core.Deprecated('Use removeAssetsRequestDescriptor instead')
const RemoveAssetsRequest$json = const {
  '1': 'RemoveAssetsRequest',
  '2': const [
    const {'1': 'assetId', '3': 1, '4': 1, '5': 3, '10': 'assetId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveAssetsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeAssetsRequestDescriptor = $convert.base64Decode('ChNSZW1vdmVBc3NldHNSZXF1ZXN0EhgKB2Fzc2V0SWQYASABKANSB2Fzc2V0SWQSGgoIZGVsZXRlQXQYAiABKANSCGRlbGV0ZUF0');
@$core.Deprecated('Use removeAssetsResponseDescriptor instead')
const RemoveAssetsResponse$json = const {
  '1': 'RemoveAssetsResponse',
};

/// Descriptor for `RemoveAssetsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeAssetsResponseDescriptor = $convert.base64Decode('ChRSZW1vdmVBc3NldHNSZXNwb25zZQ==');
