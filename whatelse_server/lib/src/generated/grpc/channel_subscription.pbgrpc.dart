///
//  Generated code. Do not modify.
//  source: channel_subscription.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'channel_subscription.pb.dart' as $12;
import 'common.pb.dart' as $2;
export 'channel_subscription.pb.dart';

class ChannelSubscriptionServiceClient extends $grpc.Client {
  static final _$putChannelSubscription = $grpc.ClientMethod<
          $12.ChannelSubscriptionInfo, $2.Empty>(
      '/channel_subscription.ChannelSubscriptionService/PutChannelSubscription',
      ($12.ChannelSubscriptionInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchChannelSubscription = $grpc.ClientMethod<$2.FetchRequest,
          $12.ChannelSubscriptionList>(
      '/channel_subscription.ChannelSubscriptionService/FetchChannelSubscription',
      ($2.FetchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $12.ChannelSubscriptionList.fromBuffer(value));

  ChannelSubscriptionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putChannelSubscription(
      $12.ChannelSubscriptionInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putChannelSubscription, request,
        options: options);
  }

  $grpc.ResponseFuture<$12.ChannelSubscriptionList> fetchChannelSubscription(
      $2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchChannelSubscription, request,
        options: options);
  }
}

abstract class ChannelSubscriptionServiceBase extends $grpc.Service {
  $core.String get $name => 'channel_subscription.ChannelSubscriptionService';

  ChannelSubscriptionServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.ChannelSubscriptionInfo, $2.Empty>(
        'PutChannelSubscription',
        putChannelSubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $12.ChannelSubscriptionInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.FetchRequest, $12.ChannelSubscriptionList>(
            'FetchChannelSubscription',
            fetchChannelSubscription_Pre,
            false,
            false,
            ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
            ($12.ChannelSubscriptionList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putChannelSubscription_Pre($grpc.ServiceCall call,
      $async.Future<$12.ChannelSubscriptionInfo> request) async {
    return putChannelSubscription(call, await request);
  }

  $async.Future<$12.ChannelSubscriptionList> fetchChannelSubscription_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchChannelSubscription(call, await request);
  }

  $async.Future<$2.Empty> putChannelSubscription(
      $grpc.ServiceCall call, $12.ChannelSubscriptionInfo request);
  $async.Future<$12.ChannelSubscriptionList> fetchChannelSubscription(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
