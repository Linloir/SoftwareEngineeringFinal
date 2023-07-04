///
//  Generated code. Do not modify.
//  source: channel_subscription.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use channelSubscriptionInfoDescriptor instead')
const ChannelSubscriptionInfo$json = const {
  '1': 'ChannelSubscriptionInfo',
  '2': const [
    const {'1': 'shareRecord', '3': 1, '4': 1, '5': 8, '10': 'shareRecord'},
    const {'1': 'channel', '3': 2, '4': 1, '5': 11, '6': '.channel.ChannelInfo', '10': 'channel'},
    const {'1': 'profile', '3': 3, '4': 1, '5': 11, '6': '.profile.ProfileInfo', '10': 'profile'},
    const {'1': 'updateAt', '3': 4, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `ChannelSubscriptionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubscriptionInfoDescriptor = $convert.base64Decode('ChdDaGFubmVsU3Vic2NyaXB0aW9uSW5mbxIgCgtzaGFyZVJlY29yZBgBIAEoCFILc2hhcmVSZWNvcmQSLgoHY2hhbm5lbBgCIAEoCzIULmNoYW5uZWwuQ2hhbm5lbEluZm9SB2NoYW5uZWwSLgoHcHJvZmlsZRgDIAEoCzIULnByb2ZpbGUuUHJvZmlsZUluZm9SB3Byb2ZpbGUSGgoIdXBkYXRlQXQYBCABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAUgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use channelSubscriptionListDescriptor instead')
const ChannelSubscriptionList$json = const {
  '1': 'ChannelSubscriptionList',
  '2': const [
    const {'1': 'channelSubscriptions', '3': 1, '4': 3, '5': 11, '6': '.channel_subscription.ChannelSubscriptionInfo', '10': 'channelSubscriptions'},
  ],
};

/// Descriptor for `ChannelSubscriptionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubscriptionListDescriptor = $convert.base64Decode('ChdDaGFubmVsU3Vic2NyaXB0aW9uTGlzdBJhChRjaGFubmVsU3Vic2NyaXB0aW9ucxgBIAMoCzItLmNoYW5uZWxfc3Vic2NyaXB0aW9uLkNoYW5uZWxTdWJzY3JpcHRpb25JbmZvUhRjaGFubmVsU3Vic2NyaXB0aW9ucw==');
