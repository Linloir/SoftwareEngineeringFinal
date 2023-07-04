///
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'channel.pb.dart' as $3;
import 'common.pb.dart' as $2;
export 'channel.pb.dart';

class ChannelServiceClient extends $grpc.Client {
  static final _$putChannel = $grpc.ClientMethod<$3.ChannelInfo, $2.Empty>(
      '/channel.ChannelService/PutChannel',
      ($3.ChannelInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchChannel =
      $grpc.ClientMethod<$2.FetchRequest, $3.ChannelList>(
          '/channel.ChannelService/FetchChannel',
          ($2.FetchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.ChannelList.fromBuffer(value));

  ChannelServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putChannel($3.ChannelInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putChannel, request, options: options);
  }

  $grpc.ResponseFuture<$3.ChannelList> fetchChannel($2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchChannel, request, options: options);
  }
}

abstract class ChannelServiceBase extends $grpc.Service {
  $core.String get $name => 'channel.ChannelService';

  ChannelServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ChannelInfo, $2.Empty>(
        'PutChannel',
        putChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ChannelInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $3.ChannelList>(
        'FetchChannel',
        fetchChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($3.ChannelList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putChannel_Pre(
      $grpc.ServiceCall call, $async.Future<$3.ChannelInfo> request) async {
    return putChannel(call, await request);
  }

  $async.Future<$3.ChannelList> fetchChannel_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchChannel(call, await request);
  }

  $async.Future<$2.Empty> putChannel(
      $grpc.ServiceCall call, $3.ChannelInfo request);
  $async.Future<$3.ChannelList> fetchChannel(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
