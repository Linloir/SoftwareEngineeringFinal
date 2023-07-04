///
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'channel.pb.dart' as $5;
export 'channel.pb.dart';

class ChannelClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$5.CreateChannelRequest, $5.CreateChannelResponse>(
          '/channel.Channel/Create',
          ($5.CreateChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CreateChannelResponse.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$5.GetChannelRequest, $5.GetChannelResponse>(
          '/channel.Channel/Get',
          ($5.GetChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetChannelResponse.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$5.GetChannelListRequest, $5.GetChannelListResponse>(
          '/channel.Channel/List',
          ($5.GetChannelListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetChannelListResponse.fromBuffer(value));
  static final _$modify =
      $grpc.ClientMethod<$5.ModifyChannelRequest, $5.ModifyChannelResponse>(
          '/channel.Channel/Modify',
          ($5.ModifyChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ModifyChannelResponse.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$5.RemoveChannelRequest, $5.RemoveChannelResponse>(
          '/channel.Channel/Remove',
          ($5.RemoveChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.RemoveChannelResponse.fromBuffer(value));
  static final _$createSubscription = $grpc.ClientMethod<
          $5.CreateSubscriptionRequest, $5.CreateSubscriptionResponse>(
      '/channel.Channel/CreateSubscription',
      ($5.CreateSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateSubscriptionResponse.fromBuffer(value));
  static final _$getSubscription =
      $grpc.ClientMethod<$5.GetSubscriptionRequest, $5.GetSubscriptionResponse>(
          '/channel.Channel/GetSubscription',
          ($5.GetSubscriptionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetSubscriptionResponse.fromBuffer(value));
  static final _$getSubscriptionList = $grpc.ClientMethod<
          $5.GetSubscriptionListRequest, $5.GetSubscriptionListResponse>(
      '/channel.Channel/GetSubscriptionList',
      ($5.GetSubscriptionListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetSubscriptionListResponse.fromBuffer(value));
  static final _$modifySubscription = $grpc.ClientMethod<
          $5.ModifySubscriptionRequest, $5.ModifySubscriptionResponse>(
      '/channel.Channel/ModifySubscription',
      ($5.ModifySubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ModifySubscriptionResponse.fromBuffer(value));
  static final _$removeSubscription = $grpc.ClientMethod<
          $5.RemoveSubscriptionRequest, $5.RemoveSubscriptionResponse>(
      '/channel.Channel/RemoveSubscription',
      ($5.RemoveSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.RemoveSubscriptionResponse.fromBuffer(value));

  ChannelClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateChannelResponse> create(
      $5.CreateChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetChannelResponse> get($5.GetChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetChannelListResponse> list(
      $5.GetChannelListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$5.ModifyChannelResponse> modify(
      $5.ModifyChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modify, request, options: options);
  }

  $grpc.ResponseFuture<$5.RemoveChannelResponse> remove(
      $5.RemoveChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateSubscriptionResponse> createSubscription(
      $5.CreateSubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubscription, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSubscriptionResponse> getSubscription(
      $5.GetSubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSubscription, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSubscriptionListResponse> getSubscriptionList(
      $5.GetSubscriptionListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSubscriptionList, request, options: options);
  }

  $grpc.ResponseFuture<$5.ModifySubscriptionResponse> modifySubscription(
      $5.ModifySubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modifySubscription, request, options: options);
  }

  $grpc.ResponseFuture<$5.RemoveSubscriptionResponse> removeSubscription(
      $5.RemoveSubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeSubscription, request, options: options);
  }
}

abstract class ChannelServiceBase extends $grpc.Service {
  $core.String get $name => 'channel.Channel';

  ChannelServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$5.CreateChannelRequest, $5.CreateChannelResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.CreateChannelRequest.fromBuffer(value),
            ($5.CreateChannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetChannelRequest, $5.GetChannelResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetChannelRequest.fromBuffer(value),
        ($5.GetChannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetChannelListRequest,
            $5.GetChannelListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetChannelListRequest.fromBuffer(value),
        ($5.GetChannelListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ModifyChannelRequest, $5.ModifyChannelResponse>(
            'Modify',
            modify_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ModifyChannelRequest.fromBuffer(value),
            ($5.ModifyChannelResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.RemoveChannelRequest, $5.RemoveChannelResponse>(
            'Remove',
            remove_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.RemoveChannelRequest.fromBuffer(value),
            ($5.RemoveChannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateSubscriptionRequest,
            $5.CreateSubscriptionResponse>(
        'CreateSubscription',
        createSubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateSubscriptionRequest.fromBuffer(value),
        ($5.CreateSubscriptionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSubscriptionRequest,
            $5.GetSubscriptionResponse>(
        'GetSubscription',
        getSubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetSubscriptionRequest.fromBuffer(value),
        ($5.GetSubscriptionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSubscriptionListRequest,
            $5.GetSubscriptionListResponse>(
        'GetSubscriptionList',
        getSubscriptionList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetSubscriptionListRequest.fromBuffer(value),
        ($5.GetSubscriptionListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ModifySubscriptionRequest,
            $5.ModifySubscriptionResponse>(
        'ModifySubscription',
        modifySubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ModifySubscriptionRequest.fromBuffer(value),
        ($5.ModifySubscriptionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.RemoveSubscriptionRequest,
            $5.RemoveSubscriptionResponse>(
        'RemoveSubscription',
        removeSubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.RemoveSubscriptionRequest.fromBuffer(value),
        ($5.RemoveSubscriptionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateChannelResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$5.CreateChannelRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$5.GetChannelResponse> get_Pre($grpc.ServiceCall call,
      $async.Future<$5.GetChannelRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$5.GetChannelListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$5.GetChannelListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$5.ModifyChannelResponse> modify_Pre($grpc.ServiceCall call,
      $async.Future<$5.ModifyChannelRequest> request) async {
    return modify(call, await request);
  }

  $async.Future<$5.RemoveChannelResponse> remove_Pre($grpc.ServiceCall call,
      $async.Future<$5.RemoveChannelRequest> request) async {
    return remove(call, await request);
  }

  $async.Future<$5.CreateSubscriptionResponse> createSubscription_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateSubscriptionRequest> request) async {
    return createSubscription(call, await request);
  }

  $async.Future<$5.GetSubscriptionResponse> getSubscription_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetSubscriptionRequest> request) async {
    return getSubscription(call, await request);
  }

  $async.Future<$5.GetSubscriptionListResponse> getSubscriptionList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetSubscriptionListRequest> request) async {
    return getSubscriptionList(call, await request);
  }

  $async.Future<$5.ModifySubscriptionResponse> modifySubscription_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ModifySubscriptionRequest> request) async {
    return modifySubscription(call, await request);
  }

  $async.Future<$5.RemoveSubscriptionResponse> removeSubscription_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.RemoveSubscriptionRequest> request) async {
    return removeSubscription(call, await request);
  }

  $async.Future<$5.CreateChannelResponse> create(
      $grpc.ServiceCall call, $5.CreateChannelRequest request);
  $async.Future<$5.GetChannelResponse> get(
      $grpc.ServiceCall call, $5.GetChannelRequest request);
  $async.Future<$5.GetChannelListResponse> list(
      $grpc.ServiceCall call, $5.GetChannelListRequest request);
  $async.Future<$5.ModifyChannelResponse> modify(
      $grpc.ServiceCall call, $5.ModifyChannelRequest request);
  $async.Future<$5.RemoveChannelResponse> remove(
      $grpc.ServiceCall call, $5.RemoveChannelRequest request);
  $async.Future<$5.CreateSubscriptionResponse> createSubscription(
      $grpc.ServiceCall call, $5.CreateSubscriptionRequest request);
  $async.Future<$5.GetSubscriptionResponse> getSubscription(
      $grpc.ServiceCall call, $5.GetSubscriptionRequest request);
  $async.Future<$5.GetSubscriptionListResponse> getSubscriptionList(
      $grpc.ServiceCall call, $5.GetSubscriptionListRequest request);
  $async.Future<$5.ModifySubscriptionResponse> modifySubscription(
      $grpc.ServiceCall call, $5.ModifySubscriptionRequest request);
  $async.Future<$5.RemoveSubscriptionResponse> removeSubscription(
      $grpc.ServiceCall call, $5.RemoveSubscriptionRequest request);
}
