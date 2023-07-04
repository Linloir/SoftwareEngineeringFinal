///
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use channelTypeDescriptor instead')
const ChannelType$json = const {
  '1': 'ChannelType',
  '2': const [
    const {'1': 'PUBLIC', '2': 0},
    const {'1': 'INVITED', '2': 1},
    const {'1': 'PRIVATE', '2': 2},
  ],
};

/// Descriptor for `ChannelType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List channelTypeDescriptor = $convert.base64Decode('CgtDaGFubmVsVHlwZRIKCgZQVUJMSUMQABILCgdJTlZJVEVEEAESCwoHUFJJVkFURRAC');
@$core.Deprecated('Use subscriptionTypeDescriptor instead')
const SubscriptionType$json = const {
  '1': 'SubscriptionType',
  '2': const [
    const {'1': 'AUTOREJECT', '2': 0},
    const {'1': 'NORMAL', '2': 1},
    const {'1': 'AUTOACCEPT', '2': 2},
  ],
};

/// Descriptor for `SubscriptionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List subscriptionTypeDescriptor = $convert.base64Decode('ChBTdWJzY3JpcHRpb25UeXBlEg4KCkFVVE9SRUpFQ1QQABIKCgZOT1JNQUwQARIOCgpBVVRPQUNDRVBUEAI=');
@$core.Deprecated('Use createChannelRequestDescriptor instead')
const CreateChannelRequest$json = const {
  '1': 'CreateChannelRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'image', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'image', '17': true},
    const {'1': 'avatar', '3': 6, '4': 1, '5': 12, '9': 1, '10': 'avatar', '17': true},
    const {'1': 'type', '3': 7, '4': 1, '5': 14, '6': '.channel.ChannelType', '10': 'type'},
    const {'1': 'reqData', '3': 8, '4': 1, '5': 8, '10': 'reqData'},
    const {'1': 'updateAt', '3': 9, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 10, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_image'},
    const {'1': '_avatar'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createChannelRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVDaGFubmVsUmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGRlc2MYAyABKAlSBGRlc2MSEgoEaWNvbhgEIAEoCVIEaWNvbhIZCgVpbWFnZRgFIAEoDEgAUgVpbWFnZYgBARIbCgZhdmF0YXIYBiABKAxIAVIGYXZhdGFyiAEBEigKBHR5cGUYByABKA4yFC5jaGFubmVsLkNoYW5uZWxUeXBlUgR0eXBlEhgKB3JlcURhdGEYCCABKAhSB3JlcURhdGESGgoIdXBkYXRlQXQYCSABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAogASgDSAJSCGRlbGV0ZUF0iAEBQggKBl9pbWFnZUIJCgdfYXZhdGFyQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use createChannelResponseDescriptor instead')
const CreateChannelResponse$json = const {
  '1': 'CreateChannelResponse',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 3, '10': 'channelId'},
  ],
};

/// Descriptor for `CreateChannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createChannelResponseDescriptor = $convert.base64Decode('ChVDcmVhdGVDaGFubmVsUmVzcG9uc2USHAoJY2hhbm5lbElkGAEgASgDUgljaGFubmVsSWQ=');
@$core.Deprecated('Use getChannelRequestDescriptor instead')
const GetChannelRequest$json = const {
  '1': 'GetChannelRequest',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 3, '10': 'channelId'},
  ],
};

/// Descriptor for `GetChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChannelRequestDescriptor = $convert.base64Decode('ChFHZXRDaGFubmVsUmVxdWVzdBIcCgljaGFubmVsSWQYASABKANSCWNoYW5uZWxJZA==');
@$core.Deprecated('Use getChannelResponseDescriptor instead')
const GetChannelResponse$json = const {
  '1': 'GetChannelResponse',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 3, '10': 'channelId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 4, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'image', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'image', '17': true},
    const {'1': 'avatar', '3': 7, '4': 1, '5': 12, '9': 1, '10': 'avatar', '17': true},
    const {'1': 'type', '3': 8, '4': 1, '5': 14, '6': '.channel.ChannelType', '10': 'type'},
    const {'1': 'reqData', '3': 9, '4': 1, '5': 8, '10': 'reqData'},
    const {'1': 'updateAt', '3': 10, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 11, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_image'},
    const {'1': '_avatar'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetChannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChannelResponseDescriptor = $convert.base64Decode('ChJHZXRDaGFubmVsUmVzcG9uc2USHAoJY2hhbm5lbElkGAEgASgDUgljaGFubmVsSWQSHAoJcHJvZmlsZUlkGAIgASgDUglwcm9maWxlSWQSEgoEbmFtZRgDIAEoCVIEbmFtZRISCgRkZXNjGAQgASgJUgRkZXNjEhIKBGljb24YBSABKAlSBGljb24SGQoFaW1hZ2UYBiABKAxIAFIFaW1hZ2WIAQESGwoGYXZhdGFyGAcgASgMSAFSBmF2YXRhcogBARIoCgR0eXBlGAggASgOMhQuY2hhbm5lbC5DaGFubmVsVHlwZVIEdHlwZRIYCgdyZXFEYXRhGAkgASgIUgdyZXFEYXRhEhoKCHVwZGF0ZUF0GAogASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgLIAEoA0gCUghkZWxldGVBdIgBAUIICgZfaW1hZ2VCCQoHX2F2YXRhckILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use channelInfoDescriptor instead')
const ChannelInfo$json = const {
  '1': 'ChannelInfo',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 3, '10': 'channelId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 4, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'image', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'image', '17': true},
    const {'1': 'avatar', '3': 7, '4': 1, '5': 12, '9': 1, '10': 'avatar', '17': true},
    const {'1': 'type', '3': 8, '4': 1, '5': 14, '6': '.channel.ChannelType', '10': 'type'},
    const {'1': 'reqData', '3': 9, '4': 1, '5': 8, '10': 'reqData'},
    const {'1': 'updateAt', '3': 10, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 11, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_image'},
    const {'1': '_avatar'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ChannelInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelInfoDescriptor = $convert.base64Decode('CgtDaGFubmVsSW5mbxIcCgljaGFubmVsSWQYASABKANSCWNoYW5uZWxJZBIcCglwcm9maWxlSWQYAiABKANSCXByb2ZpbGVJZBISCgRuYW1lGAMgASgJUgRuYW1lEhIKBGRlc2MYBCABKAlSBGRlc2MSEgoEaWNvbhgFIAEoCVIEaWNvbhIZCgVpbWFnZRgGIAEoDEgAUgVpbWFnZYgBARIbCgZhdmF0YXIYByABKAxIAVIGYXZhdGFyiAEBEigKBHR5cGUYCCABKA4yFC5jaGFubmVsLkNoYW5uZWxUeXBlUgR0eXBlEhgKB3JlcURhdGEYCSABKAhSB3JlcURhdGESGgoIdXBkYXRlQXQYCiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAsgASgDSAJSCGRlbGV0ZUF0iAEBQggKBl9pbWFnZUIJCgdfYXZhdGFyQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use getChannelListRequestDescriptor instead')
const GetChannelListRequest$json = const {
  '1': 'GetChannelListRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetChannelListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChannelListRequestDescriptor = $convert.base64Decode('ChVHZXRDaGFubmVsTGlzdFJlcXVlc3QSHAoJcHJvZmlsZUlkGAEgASgDUglwcm9maWxlSWQSJQoLbGFzdEZldGNoQXQYAiABKANIAFILbGFzdEZldGNoQXSIAQFCDgoMX2xhc3RGZXRjaEF0');
@$core.Deprecated('Use getChannelListResponseDescriptor instead')
const GetChannelListResponse$json = const {
  '1': 'GetChannelListResponse',
  '2': const [
    const {'1': 'channelList', '3': 1, '4': 3, '5': 11, '6': '.channel.ChannelInfo', '10': 'channelList'},
  ],
};

/// Descriptor for `GetChannelListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChannelListResponseDescriptor = $convert.base64Decode('ChZHZXRDaGFubmVsTGlzdFJlc3BvbnNlEjYKC2NoYW5uZWxMaXN0GAEgAygLMhQuY2hhbm5lbC5DaGFubmVsSW5mb1ILY2hhbm5lbExpc3Q=');
@$core.Deprecated('Use modifyChannelRequestDescriptor instead')
const ModifyChannelRequest$json = const {
  '1': 'ModifyChannelRequest',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 3, '10': 'channelId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'image', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'image', '17': true},
    const {'1': 'avatar', '3': 6, '4': 1, '5': 12, '9': 1, '10': 'avatar', '17': true},
    const {'1': 'type', '3': 7, '4': 1, '5': 14, '6': '.channel.ChannelType', '10': 'type'},
    const {'1': 'reqData', '3': 8, '4': 1, '5': 8, '10': 'reqData'},
    const {'1': 'updateAt', '3': 9, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 10, '4': 1, '5': 3, '9': 2, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_image'},
    const {'1': '_avatar'},
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifyChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyChannelRequestDescriptor = $convert.base64Decode('ChRNb2RpZnlDaGFubmVsUmVxdWVzdBIcCgljaGFubmVsSWQYASABKANSCWNoYW5uZWxJZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGRlc2MYAyABKAlSBGRlc2MSEgoEaWNvbhgEIAEoCVIEaWNvbhIZCgVpbWFnZRgFIAEoDEgAUgVpbWFnZYgBARIbCgZhdmF0YXIYBiABKAxIAVIGYXZhdGFyiAEBEigKBHR5cGUYByABKA4yFC5jaGFubmVsLkNoYW5uZWxUeXBlUgR0eXBlEhgKB3JlcURhdGEYCCABKAhSB3JlcURhdGESGgoIdXBkYXRlQXQYCSABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAogASgDSAJSCGRlbGV0ZUF0iAEBQggKBl9pbWFnZUIJCgdfYXZhdGFyQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use modifyChannelResponseDescriptor instead')
const ModifyChannelResponse$json = const {
  '1': 'ModifyChannelResponse',
};

/// Descriptor for `ModifyChannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyChannelResponseDescriptor = $convert.base64Decode('ChVNb2RpZnlDaGFubmVsUmVzcG9uc2U=');
@$core.Deprecated('Use removeChannelRequestDescriptor instead')
const RemoveChannelRequest$json = const {
  '1': 'RemoveChannelRequest',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 3, '10': 'channelId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeChannelRequestDescriptor = $convert.base64Decode('ChRSZW1vdmVDaGFubmVsUmVxdWVzdBIcCgljaGFubmVsSWQYASABKANSCWNoYW5uZWxJZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeChannelResponseDescriptor instead')
const RemoveChannelResponse$json = const {
  '1': 'RemoveChannelResponse',
};

/// Descriptor for `RemoveChannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeChannelResponseDescriptor = $convert.base64Decode('ChVSZW1vdmVDaGFubmVsUmVzcG9uc2U=');
@$core.Deprecated('Use createSubscriptionRequestDescriptor instead')
const CreateSubscriptionRequest$json = const {
  '1': 'CreateSubscriptionRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'channelId', '3': 2, '4': 1, '5': 3, '10': 'channelId'},
    const {'1': 'shareRecord', '3': 3, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.channel.SubscriptionType', '10': 'type'},
    const {'1': 'updateAt', '3': 5, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `CreateSubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSubscriptionRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVTdWJzY3JpcHRpb25SZXF1ZXN0EhwKCXByb2ZpbGVJZBgBIAEoA1IJcHJvZmlsZUlkEhwKCWNoYW5uZWxJZBgCIAEoA1IJY2hhbm5lbElkEiAKC3NoYXJlUmVjb3JkGAMgASgIUgtzaGFyZVJlY29yZBItCgR0eXBlGAQgASgOMhkuY2hhbm5lbC5TdWJzY3JpcHRpb25UeXBlUgR0eXBlEhoKCHVwZGF0ZUF0GAUgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgGIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use createSubscriptionResponseDescriptor instead')
const CreateSubscriptionResponse$json = const {
  '1': 'CreateSubscriptionResponse',
  '2': const [
    const {'1': 'subscriptionId', '3': 1, '4': 1, '5': 3, '10': 'subscriptionId'},
  ],
};

/// Descriptor for `CreateSubscriptionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSubscriptionResponseDescriptor = $convert.base64Decode('ChpDcmVhdGVTdWJzY3JpcHRpb25SZXNwb25zZRImCg5zdWJzY3JpcHRpb25JZBgBIAEoA1IOc3Vic2NyaXB0aW9uSWQ=');
@$core.Deprecated('Use getSubscriptionRequestDescriptor instead')
const GetSubscriptionRequest$json = const {
  '1': 'GetSubscriptionRequest',
  '2': const [
    const {'1': 'subscriptionId', '3': 1, '4': 1, '5': 3, '10': 'subscriptionId'},
  ],
};

/// Descriptor for `GetSubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSubscriptionRequestDescriptor = $convert.base64Decode('ChZHZXRTdWJzY3JpcHRpb25SZXF1ZXN0EiYKDnN1YnNjcmlwdGlvbklkGAEgASgDUg5zdWJzY3JpcHRpb25JZA==');
@$core.Deprecated('Use getSubscriptionResponseDescriptor instead')
const GetSubscriptionResponse$json = const {
  '1': 'GetSubscriptionResponse',
  '2': const [
    const {'1': 'subscriptionId', '3': 1, '4': 1, '5': 3, '10': 'subscriptionId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'channelId', '3': 3, '4': 1, '5': 3, '10': 'channelId'},
    const {'1': 'shareRecord', '3': 4, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'type', '3': 5, '4': 1, '5': 14, '6': '.channel.SubscriptionType', '10': 'type'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `GetSubscriptionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSubscriptionResponseDescriptor = $convert.base64Decode('ChdHZXRTdWJzY3JpcHRpb25SZXNwb25zZRImCg5zdWJzY3JpcHRpb25JZBgBIAEoA1IOc3Vic2NyaXB0aW9uSWQSHAoJcHJvZmlsZUlkGAIgASgDUglwcm9maWxlSWQSHAoJY2hhbm5lbElkGAMgASgDUgljaGFubmVsSWQSIAoLc2hhcmVSZWNvcmQYBCABKAhSC3NoYXJlUmVjb3JkEi0KBHR5cGUYBSABKA4yGS5jaGFubmVsLlN1YnNjcmlwdGlvblR5cGVSBHR5cGUSGgoIdXBkYXRlQXQYBiABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAcgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use subscriptionInfoDescriptor instead')
const SubscriptionInfo$json = const {
  '1': 'SubscriptionInfo',
  '2': const [
    const {'1': 'subscriptionId', '3': 1, '4': 1, '5': 3, '10': 'subscriptionId'},
    const {'1': 'profileId', '3': 2, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'channelId', '3': 3, '4': 1, '5': 3, '10': 'channelId'},
    const {'1': 'shareRecord', '3': 4, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'type', '3': 5, '4': 1, '5': 14, '6': '.channel.SubscriptionType', '10': 'type'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `SubscriptionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionInfoDescriptor = $convert.base64Decode('ChBTdWJzY3JpcHRpb25JbmZvEiYKDnN1YnNjcmlwdGlvbklkGAEgASgDUg5zdWJzY3JpcHRpb25JZBIcCglwcm9maWxlSWQYAiABKANSCXByb2ZpbGVJZBIcCgljaGFubmVsSWQYAyABKANSCWNoYW5uZWxJZBIgCgtzaGFyZVJlY29yZBgEIAEoCFILc2hhcmVSZWNvcmQSLQoEdHlwZRgFIAEoDjIZLmNoYW5uZWwuU3Vic2NyaXB0aW9uVHlwZVIEdHlwZRIaCgh1cGRhdGVBdBgGIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYByABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use channelSubsciprtionListDescriptor instead')
const ChannelSubsciprtionList$json = const {
  '1': 'ChannelSubsciprtionList',
  '2': const [
    const {'1': 'channelInfo', '3': 1, '4': 1, '5': 11, '6': '.channel.ChannelInfo', '10': 'channelInfo'},
    const {'1': 'subscriptionInfo', '3': 2, '4': 1, '5': 11, '6': '.channel.SubscriptionInfo', '10': 'subscriptionInfo'},
  ],
};

/// Descriptor for `ChannelSubsciprtionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubsciprtionListDescriptor = $convert.base64Decode('ChdDaGFubmVsU3Vic2NpcHJ0aW9uTGlzdBI2CgtjaGFubmVsSW5mbxgBIAEoCzIULmNoYW5uZWwuQ2hhbm5lbEluZm9SC2NoYW5uZWxJbmZvEkUKEHN1YnNjcmlwdGlvbkluZm8YAiABKAsyGS5jaGFubmVsLlN1YnNjcmlwdGlvbkluZm9SEHN1YnNjcmlwdGlvbkluZm8=');
@$core.Deprecated('Use getSubscriptionListRequestDescriptor instead')
const GetSubscriptionListRequest$json = const {
  '1': 'GetSubscriptionListRequest',
  '2': const [
    const {'1': 'profileId', '3': 1, '4': 1, '5': 3, '10': 'profileId'},
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `GetSubscriptionListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSubscriptionListRequestDescriptor = $convert.base64Decode('ChpHZXRTdWJzY3JpcHRpb25MaXN0UmVxdWVzdBIcCglwcm9maWxlSWQYASABKANSCXByb2ZpbGVJZBIlCgtsYXN0RmV0Y2hBdBgCIAEoA0gAUgtsYXN0RmV0Y2hBdIgBAUIOCgxfbGFzdEZldGNoQXQ=');
@$core.Deprecated('Use getSubscriptionListResponseDescriptor instead')
const GetSubscriptionListResponse$json = const {
  '1': 'GetSubscriptionListResponse',
  '2': const [
    const {'1': 'SubscriptionList', '3': 1, '4': 3, '5': 11, '6': '.channel.ChannelSubsciprtionList', '10': 'SubscriptionList'},
  ],
};

/// Descriptor for `GetSubscriptionListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSubscriptionListResponseDescriptor = $convert.base64Decode('ChtHZXRTdWJzY3JpcHRpb25MaXN0UmVzcG9uc2USTAoQU3Vic2NyaXB0aW9uTGlzdBgBIAMoCzIgLmNoYW5uZWwuQ2hhbm5lbFN1YnNjaXBydGlvbkxpc3RSEFN1YnNjcmlwdGlvbkxpc3Q=');
@$core.Deprecated('Use modifySubscriptionRequestDescriptor instead')
const ModifySubscriptionRequest$json = const {
  '1': 'ModifySubscriptionRequest',
  '2': const [
    const {'1': 'subscriptionId', '3': 1, '4': 1, '5': 3, '10': 'subscriptionId'},
    const {'1': 'shareRecord', '3': 2, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.channel.SubscriptionType', '10': 'type'},
    const {'1': 'updateAt', '3': 4, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ModifySubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifySubscriptionRequestDescriptor = $convert.base64Decode('ChlNb2RpZnlTdWJzY3JpcHRpb25SZXF1ZXN0EiYKDnN1YnNjcmlwdGlvbklkGAEgASgDUg5zdWJzY3JpcHRpb25JZBIgCgtzaGFyZVJlY29yZBgCIAEoCFILc2hhcmVSZWNvcmQSLQoEdHlwZRgDIAEoDjIZLmNoYW5uZWwuU3Vic2NyaXB0aW9uVHlwZVIEdHlwZRIaCgh1cGRhdGVBdBgEIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYBSABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use modifySubscriptionResponseDescriptor instead')
const ModifySubscriptionResponse$json = const {
  '1': 'ModifySubscriptionResponse',
};

/// Descriptor for `ModifySubscriptionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifySubscriptionResponseDescriptor = $convert.base64Decode('ChpNb2RpZnlTdWJzY3JpcHRpb25SZXNwb25zZQ==');
@$core.Deprecated('Use removeSubscriptionRequestDescriptor instead')
const RemoveSubscriptionRequest$json = const {
  '1': 'RemoveSubscriptionRequest',
  '2': const [
    const {'1': 'subscriptionId', '3': 1, '4': 1, '5': 3, '10': 'subscriptionId'},
    const {'1': 'deleteAt', '3': 2, '4': 1, '5': 3, '10': 'deleteAt'},
  ],
};

/// Descriptor for `RemoveSubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSubscriptionRequestDescriptor = $convert.base64Decode('ChlSZW1vdmVTdWJzY3JpcHRpb25SZXF1ZXN0EiYKDnN1YnNjcmlwdGlvbklkGAEgASgDUg5zdWJzY3JpcHRpb25JZBIaCghkZWxldGVBdBgCIAEoA1IIZGVsZXRlQXQ=');
@$core.Deprecated('Use removeSubscriptionResponseDescriptor instead')
const RemoveSubscriptionResponse$json = const {
  '1': 'RemoveSubscriptionResponse',
};

/// Descriptor for `RemoveSubscriptionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSubscriptionResponseDescriptor = $convert.base64Decode('ChpSZW1vdmVTdWJzY3JpcHRpb25SZXNwb25zZQ==');
