///
//  Generated code. Do not modify.
//  source: task_assignment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'task_assignment.pb.dart' as $10;
import 'common.pb.dart' as $2;
export 'task_assignment.pb.dart';

class TaskAssignmentServiceClient extends $grpc.Client {
  static final _$putTaskAssignment =
      $grpc.ClientMethod<$10.TaskAssignmentInfo, $2.Empty>(
          '/task_assignment.TaskAssignmentService/PutTaskAssignment',
          ($10.TaskAssignmentInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchTaskAssignment =
      $grpc.ClientMethod<$2.FetchRequest, $10.TaskAssignmentList>(
          '/task_assignment.TaskAssignmentService/FetchTaskAssignment',
          ($2.FetchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.TaskAssignmentList.fromBuffer(value));

  TaskAssignmentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putTaskAssignment(
      $10.TaskAssignmentInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putTaskAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$10.TaskAssignmentList> fetchTaskAssignment(
      $2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchTaskAssignment, request, options: options);
  }
}

abstract class TaskAssignmentServiceBase extends $grpc.Service {
  $core.String get $name => 'task_assignment.TaskAssignmentService';

  TaskAssignmentServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.TaskAssignmentInfo, $2.Empty>(
        'PutTaskAssignment',
        putTaskAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.TaskAssignmentInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $10.TaskAssignmentList>(
        'FetchTaskAssignment',
        fetchTaskAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($10.TaskAssignmentList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putTaskAssignment_Pre($grpc.ServiceCall call,
      $async.Future<$10.TaskAssignmentInfo> request) async {
    return putTaskAssignment(call, await request);
  }

  $async.Future<$10.TaskAssignmentList> fetchTaskAssignment_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchTaskAssignment(call, await request);
  }

  $async.Future<$2.Empty> putTaskAssignment(
      $grpc.ServiceCall call, $10.TaskAssignmentInfo request);
  $async.Future<$10.TaskAssignmentList> fetchTaskAssignment(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
