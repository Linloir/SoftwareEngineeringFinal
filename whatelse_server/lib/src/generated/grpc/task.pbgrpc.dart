///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'task.pb.dart' as $4;
import 'common.pb.dart' as $2;
export 'task.pb.dart';

class TaskServiceClient extends $grpc.Client {
  static final _$putTask = $grpc.ClientMethod<$4.TaskInfo, $2.Empty>(
      '/task.TaskService/PutTask',
      ($4.TaskInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchTask = $grpc.ClientMethod<$2.FetchRequest, $4.TaskList>(
      '/task.TaskService/FetchTask',
      ($2.FetchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TaskList.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putTask($4.TaskInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putTask, request, options: options);
  }

  $grpc.ResponseFuture<$4.TaskList> fetchTask($2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchTask, request, options: options);
  }
}

abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'task.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.TaskInfo, $2.Empty>(
        'PutTask',
        putTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.TaskInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $4.TaskList>(
        'FetchTask',
        fetchTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($4.TaskList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putTask_Pre(
      $grpc.ServiceCall call, $async.Future<$4.TaskInfo> request) async {
    return putTask(call, await request);
  }

  $async.Future<$4.TaskList> fetchTask_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchTask(call, await request);
  }

  $async.Future<$2.Empty> putTask($grpc.ServiceCall call, $4.TaskInfo request);
  $async.Future<$4.TaskList> fetchTask(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
