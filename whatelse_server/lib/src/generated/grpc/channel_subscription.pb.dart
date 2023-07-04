///
//  Generated code. Do not modify.
//  source: channel_subscription.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'channel.pb.dart' as $3;
import 'profile.pb.dart' as $1;

class ChannelSubscriptionInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelSubscriptionInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel_subscription'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shareRecord', protoName: 'shareRecord')
    ..aOM<$3.ChannelInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: $3.ChannelInfo.create)
    ..aOM<$1.ProfileInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $1.ProfileInfo.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  ChannelSubscriptionInfo._() : super();
  factory ChannelSubscriptionInfo({
    $core.bool? shareRecord,
    $3.ChannelInfo? channel,
    $1.ProfileInfo? profile,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (shareRecord != null) {
      _result.shareRecord = shareRecord;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory ChannelSubscriptionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubscriptionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionInfo clone() => ChannelSubscriptionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionInfo copyWith(void Function(ChannelSubscriptionInfo) updates) => super.copyWith((message) => updates(message as ChannelSubscriptionInfo)) as ChannelSubscriptionInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelSubscriptionInfo create() => ChannelSubscriptionInfo._();
  ChannelSubscriptionInfo createEmptyInstance() => create();
  static $pb.PbList<ChannelSubscriptionInfo> createRepeated() => $pb.PbList<ChannelSubscriptionInfo>();
  @$core.pragma('dart2js:noInline')
  static ChannelSubscriptionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelSubscriptionInfo>(create);
  static ChannelSubscriptionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get shareRecord => $_getBF(0);
  @$pb.TagNumber(1)
  set shareRecord($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShareRecord() => $_has(0);
  @$pb.TagNumber(1)
  void clearShareRecord() => clearField(1);

  @$pb.TagNumber(2)
  $3.ChannelInfo get channel => $_getN(1);
  @$pb.TagNumber(2)
  set channel($3.ChannelInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannel() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannel() => clearField(2);
  @$pb.TagNumber(2)
  $3.ChannelInfo ensureChannel() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.ProfileInfo get profile => $_getN(2);
  @$pb.TagNumber(3)
  set profile($1.ProfileInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfile() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfile() => clearField(3);
  @$pb.TagNumber(3)
  $1.ProfileInfo ensureProfile() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get updateAt => $_getI64(3);
  @$pb.TagNumber(4)
  set updateAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateAt() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get deleteAt => $_getI64(4);
  @$pb.TagNumber(5)
  set deleteAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeleteAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeleteAt() => clearField(5);
}

class ChannelSubscriptionList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelSubscriptionList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'channel_subscription'), createEmptyInstance: create)
    ..pc<ChannelSubscriptionInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelSubscriptions', $pb.PbFieldType.PM, protoName: 'channelSubscriptions', subBuilder: ChannelSubscriptionInfo.create)
    ..hasRequiredFields = false
  ;

  ChannelSubscriptionList._() : super();
  factory ChannelSubscriptionList({
    $core.Iterable<ChannelSubscriptionInfo>? channelSubscriptions,
  }) {
    final _result = create();
    if (channelSubscriptions != null) {
      _result.channelSubscriptions.addAll(channelSubscriptions);
    }
    return _result;
  }
  factory ChannelSubscriptionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubscriptionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionList clone() => ChannelSubscriptionList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionList copyWith(void Function(ChannelSubscriptionList) updates) => super.copyWith((message) => updates(message as ChannelSubscriptionList)) as ChannelSubscriptionList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelSubscriptionList create() => ChannelSubscriptionList._();
  ChannelSubscriptionList createEmptyInstance() => create();
  static $pb.PbList<ChannelSubscriptionList> createRepeated() => $pb.PbList<ChannelSubscriptionList>();
  @$core.pragma('dart2js:noInline')
  static ChannelSubscriptionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelSubscriptionList>(create);
  static ChannelSubscriptionList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChannelSubscriptionInfo> get channelSubscriptions => $_getList(0);
}

