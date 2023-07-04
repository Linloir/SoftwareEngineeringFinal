///
//  Generated code. Do not modify.
//  source: task_asset.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'task_asset.pb.dart' as $7;
import 'common.pb.dart' as $2;
export 'task_asset.pb.dart';

class TaskAssetServiceClient extends $grpc.Client {
  static final _$putTaskAsset = $grpc.ClientMethod<$7.TaskAssetInfo, $2.Empty>(
      '/task_asset.TaskAssetService/PutTaskAsset',
      ($7.TaskAssetInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchTaskAssetMeta =
      $grpc.ClientMethod<$2.FetchRequest, $7.TaskAssetList>(
          '/task_asset.TaskAssetService/FetchTaskAssetMeta',
          ($2.FetchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.TaskAssetList.fromBuffer(value));
  static final _$fetchTaskAssetBytes =
      $grpc.ClientMethod<$7.TaskAssetIdentifier, $7.TaskAssetBytes>(
          '/task_asset.TaskAssetService/FetchTaskAssetBytes',
          ($7.TaskAssetIdentifier value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.TaskAssetBytes.fromBuffer(value));

  TaskAssetServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putTaskAsset($7.TaskAssetInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putTaskAsset, request, options: options);
  }

  $grpc.ResponseFuture<$7.TaskAssetList> fetchTaskAssetMeta(
      $2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchTaskAssetMeta, request, options: options);
  }

  $grpc.ResponseStream<$7.TaskAssetBytes> fetchTaskAssetBytes(
      $7.TaskAssetIdentifier request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$fetchTaskAssetBytes, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class TaskAssetServiceBase extends $grpc.Service {
  $core.String get $name => 'task_asset.TaskAssetService';

  TaskAssetServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.TaskAssetInfo, $2.Empty>(
        'PutTaskAsset',
        putTaskAsset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.TaskAssetInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $7.TaskAssetList>(
        'FetchTaskAssetMeta',
        fetchTaskAssetMeta_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($7.TaskAssetList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.TaskAssetIdentifier, $7.TaskAssetBytes>(
        'FetchTaskAssetBytes',
        fetchTaskAssetBytes_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $7.TaskAssetIdentifier.fromBuffer(value),
        ($7.TaskAssetBytes value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putTaskAsset_Pre(
      $grpc.ServiceCall call, $async.Future<$7.TaskAssetInfo> request) async {
    return putTaskAsset(call, await request);
  }

  $async.Future<$7.TaskAssetList> fetchTaskAssetMeta_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchTaskAssetMeta(call, await request);
  }

  $async.Stream<$7.TaskAssetBytes> fetchTaskAssetBytes_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.TaskAssetIdentifier> request) async* {
    yield* fetchTaskAssetBytes(call, await request);
  }

  $async.Future<$2.Empty> putTaskAsset(
      $grpc.ServiceCall call, $7.TaskAssetInfo request);
  $async.Future<$7.TaskAssetList> fetchTaskAssetMeta(
      $grpc.ServiceCall call, $2.FetchRequest request);
  $async.Stream<$7.TaskAssetBytes> fetchTaskAssetBytes(
      $grpc.ServiceCall call, $7.TaskAssetIdentifier request);
}
