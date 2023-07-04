///
//  Generated code. Do not modify.
//  source: task_asset.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use taskAssetInfoDescriptor instead')
const TaskAssetInfo$json = const {
  '1': 'TaskAssetInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'task', '3': 3, '4': 1, '5': 11, '6': '.task.TaskInfo', '10': 'task'},
    const {'1': 'updateAt', '3': 4, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `TaskAssetInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskAssetInfoDescriptor = $convert.base64Decode('Cg1UYXNrQXNzZXRJbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSEgoEaGFzaBgCIAEoCVIEaGFzaBIiCgR0YXNrGAMgASgLMg4udGFzay5UYXNrSW5mb1IEdGFzaxIaCgh1cGRhdGVBdBgEIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYBSABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use taskAssetListDescriptor instead')
const TaskAssetList$json = const {
  '1': 'TaskAssetList',
  '2': const [
    const {'1': 'taskAssets', '3': 1, '4': 3, '5': 11, '6': '.task_asset.TaskAssetInfo', '10': 'taskAssets'},
  ],
};

/// Descriptor for `TaskAssetList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskAssetListDescriptor = $convert.base64Decode('Cg1UYXNrQXNzZXRMaXN0EjkKCnRhc2tBc3NldHMYASADKAsyGS50YXNrX2Fzc2V0LlRhc2tBc3NldEluZm9SCnRhc2tBc3NldHM=');
@$core.Deprecated('Use taskAssetIdentifierDescriptor instead')
const TaskAssetIdentifier$json = const {
  '1': 'TaskAssetIdentifier',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'taskUuid', '3': 2, '4': 1, '5': 9, '10': 'taskUuid'},
  ],
};

/// Descriptor for `TaskAssetIdentifier`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskAssetIdentifierDescriptor = $convert.base64Decode('ChNUYXNrQXNzZXRJZGVudGlmaWVyEhIKBGhhc2gYASABKAlSBGhhc2gSGgoIdGFza1V1aWQYAiABKAlSCHRhc2tVdWlk');
@$core.Deprecated('Use taskAssetBytesDescriptor instead')
const TaskAssetBytes$json = const {
  '1': 'TaskAssetBytes',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 12, '10': 'bytes'},
  ],
};

/// Descriptor for `TaskAssetBytes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskAssetBytesDescriptor = $convert.base64Decode('Cg5UYXNrQXNzZXRCeXRlcxIUCgVieXRlcxgBIAEoDFIFYnl0ZXM=');
