///
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ChannelType extends $pb.ProtobufEnum {
  static const ChannelType PUBLIC = ChannelType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PUBLIC');
  static const ChannelType INVITED = ChannelType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVITED');
  static const ChannelType PRIVATE = ChannelType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRIVATE');

  static const $core.List<ChannelType> values = <ChannelType> [
    PUBLIC,
    INVITED,
    PRIVATE,
  ];

  static final $core.Map<$core.int, ChannelType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelType? valueOf($core.int value) => _byValue[value];

  const ChannelType._($core.int v, $core.String n) : super(v, n);
}

class SubscriptionType extends $pb.ProtobufEnum {
  static const SubscriptionType AUTOREJECT = SubscriptionType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTOREJECT');
  static const SubscriptionType NORMAL = SubscriptionType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NORMAL');
  static const SubscriptionType AUTOACCEPT = SubscriptionType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTOACCEPT');

  static const $core.List<SubscriptionType> values = <SubscriptionType> [
    AUTOREJECT,
    NORMAL,
    AUTOACCEPT,
  ];

  static final $core.Map<$core.int, SubscriptionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubscriptionType? valueOf($core.int value) => _byValue[value];

  const SubscriptionType._($core.int v, $core.String n) : super(v, n);
}

