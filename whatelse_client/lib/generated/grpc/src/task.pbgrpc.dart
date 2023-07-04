///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'task.pb.dart' as $2;
export 'task.pb.dart';

class TaskClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$2.CreateTaskRequest, $2.CreateTaskResponse>(
          '/task.Task/Create',
          ($2.CreateTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateTaskResponse.fromBuffer(value));
  static final _$modify =
      $grpc.ClientMethod<$2.ModifyTaskRequest, $2.ModifyTaskResponse>(
          '/task.Task/Modify',
          ($2.ModifyTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ModifyTaskResponse.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$2.GetTaskRequest, $2.GetTaskResponse>(
          '/task.Task/Get',
          ($2.GetTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetTaskResponse.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$2.RemoveTaskRequest, $2.RemoveTaskResponse>(
          '/task.Task/Remove',
          ($2.RemoveTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RemoveTaskResponse.fromBuffer(value));
  static final _$uploadAssets =
      $grpc.ClientMethod<$2.UploadAssetsRequest, $2.UploadAssetsResponse>(
          '/task.Task/UploadAssets',
          ($2.UploadAssetsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UploadAssetsResponse.fromBuffer(value));
  static final _$getAssets =
      $grpc.ClientMethod<$2.GetAssetsRequest, $2.GetAssetsResponse>(
          '/task.Task/GetAssets',
          ($2.GetAssetsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetAssetsResponse.fromBuffer(value));
  static final _$removeAssets =
      $grpc.ClientMethod<$2.RemoveAssetsRequest, $2.RemoveAssetsResponse>(
          '/task.Task/RemoveAssets',
          ($2.RemoveAssetsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RemoveAssetsResponse.fromBuffer(value));

  TaskClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateTaskResponse> create(
      $2.CreateTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$2.ModifyTaskResponse> modify(
      $2.ModifyTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modify, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetTaskResponse> get($2.GetTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$2.RemoveTaskResponse> remove(
      $2.RemoveTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$2.UploadAssetsResponse> uploadAssets(
      $async.Stream<$2.UploadAssetsRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadAssets, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$2.GetAssetsResponse> getAssets(
      $2.GetAssetsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAssets, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.RemoveAssetsResponse> removeAssets(
      $2.RemoveAssetsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeAssets, request, options: options);
  }
}

abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'task.Task';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateTaskRequest, $2.CreateTaskResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateTaskRequest.fromBuffer(value),
        ($2.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ModifyTaskRequest, $2.ModifyTaskResponse>(
        'Modify',
        modify_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ModifyTaskRequest.fromBuffer(value),
        ($2.ModifyTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetTaskRequest, $2.GetTaskResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetTaskRequest.fromBuffer(value),
        ($2.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RemoveTaskRequest, $2.RemoveTaskResponse>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RemoveTaskRequest.fromBuffer(value),
        ($2.RemoveTaskResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.UploadAssetsRequest, $2.UploadAssetsResponse>(
            'UploadAssets',
            uploadAssets,
            true,
            false,
            ($core.List<$core.int> value) =>
                $2.UploadAssetsRequest.fromBuffer(value),
            ($2.UploadAssetsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetAssetsRequest, $2.GetAssetsResponse>(
        'GetAssets',
        getAssets_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.GetAssetsRequest.fromBuffer(value),
        ($2.GetAssetsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.RemoveAssetsRequest, $2.RemoveAssetsResponse>(
            'RemoveAssets',
            removeAssets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.RemoveAssetsRequest.fromBuffer(value),
            ($2.RemoveAssetsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateTaskResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$2.CreateTaskRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$2.ModifyTaskResponse> modify_Pre($grpc.ServiceCall call,
      $async.Future<$2.ModifyTaskRequest> request) async {
    return modify(call, await request);
  }

  $async.Future<$2.GetTaskResponse> get_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetTaskRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$2.RemoveTaskResponse> remove_Pre($grpc.ServiceCall call,
      $async.Future<$2.RemoveTaskRequest> request) async {
    return remove(call, await request);
  }

  $async.Stream<$2.GetAssetsResponse> getAssets_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetAssetsRequest> request) async* {
    yield* getAssets(call, await request);
  }

  $async.Future<$2.RemoveAssetsResponse> removeAssets_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RemoveAssetsRequest> request) async {
    return removeAssets(call, await request);
  }

  $async.Future<$2.CreateTaskResponse> create(
      $grpc.ServiceCall call, $2.CreateTaskRequest request);
  $async.Future<$2.ModifyTaskResponse> modify(
      $grpc.ServiceCall call, $2.ModifyTaskRequest request);
  $async.Future<$2.GetTaskResponse> get(
      $grpc.ServiceCall call, $2.GetTaskRequest request);
  $async.Future<$2.RemoveTaskResponse> remove(
      $grpc.ServiceCall call, $2.RemoveTaskRequest request);
  $async.Future<$2.UploadAssetsResponse> uploadAssets(
      $grpc.ServiceCall call, $async.Stream<$2.UploadAssetsRequest> request);
  $async.Stream<$2.GetAssetsResponse> getAssets(
      $grpc.ServiceCall call, $2.GetAssetsRequest request);
  $async.Future<$2.RemoveAssetsResponse> removeAssets(
      $grpc.ServiceCall call, $2.RemoveAssetsRequest request);
}
