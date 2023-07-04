///
//  Generated code. Do not modify.
//  source: taskass.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'taskass.pb.dart' as $7;
export 'taskass.pb.dart';

class TaskAssignmentClient extends $grpc.Client {
  static final _$createAssignment = $grpc.ClientMethod<
          $7.CreateTaskAssignmentRequest, $7.CreateTaskAssignmentResponse>(
      '/taskassignment.TaskAssignment/CreateAssignment',
      ($7.CreateTaskAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.CreateTaskAssignmentResponse.fromBuffer(value));
  static final _$getAssignment = $grpc.ClientMethod<$7.GetTaskAssignmentRequest,
          $7.GetTaskAssignmentResponse>(
      '/taskassignment.TaskAssignment/GetAssignment',
      ($7.GetTaskAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetTaskAssignmentResponse.fromBuffer(value));
  static final _$modifyAssignment = $grpc.ClientMethod<
          $7.ModifyTaskAssignmentRequest, $7.ModifyTaskAssignmentResponse>(
      '/taskassignment.TaskAssignment/ModifyAssignment',
      ($7.ModifyTaskAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ModifyTaskAssignmentResponse.fromBuffer(value));
  static final _$removeAssignment = $grpc.ClientMethod<
          $7.RemoveTaskAssignmentRequest, $7.RemoveTaskAssignmentResponse>(
      '/taskassignment.TaskAssignment/RemoveAssignment',
      ($7.RemoveTaskAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.RemoveTaskAssignmentResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<
          $7.GetAssignedTasksRequest, $7.GetAssignedTasksResponse>(
      '/taskassignment.TaskAssignment/GetAssignedTasks',
      ($7.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetAssignedTasksResponse.fromBuffer(value));
  static final _$getUnassignedTasks = $grpc.ClientMethod<
          $7.GetUnassignedTasksRequest, $7.GetUnassignedTasksResponse>(
      '/taskassignment.TaskAssignment/GetUnassignedTasks',
      ($7.GetUnassignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetUnassignedTasksResponse.fromBuffer(value));
  static final _$getAssignedTasksWithTaskInfo = $grpc.ClientMethod<
          $7.GetAssignedTasksWithTaskInfoRequest,
          $7.GetAssignedTasksWithTaskInfoResponse>(
      '/taskassignment.TaskAssignment/GetAssignedTasksWithTaskInfo',
      ($7.GetAssignedTasksWithTaskInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetAssignedTasksWithTaskInfoResponse.fromBuffer(value));

  TaskAssignmentClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateTaskAssignmentResponse> createAssignment(
      $7.CreateTaskAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetTaskAssignmentResponse> getAssignment(
      $7.GetTaskAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$7.ModifyTaskAssignmentResponse> modifyAssignment(
      $7.ModifyTaskAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modifyAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$7.RemoveTaskAssignmentResponse> removeAssignment(
      $7.RemoveTaskAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetAssignedTasksResponse> getAssignedTasks(
      $7.GetAssignedTasksRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetUnassignedTasksResponse> getUnassignedTasks(
      $7.GetUnassignedTasksRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUnassignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetAssignedTasksWithTaskInfoResponse>
      getAssignedTasksWithTaskInfo(
          $7.GetAssignedTasksWithTaskInfoRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasksWithTaskInfo, request,
        options: options);
  }
}

abstract class TaskAssignmentServiceBase extends $grpc.Service {
  $core.String get $name => 'taskassignment.TaskAssignment';

  TaskAssignmentServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateTaskAssignmentRequest,
            $7.CreateTaskAssignmentResponse>(
        'CreateAssignment',
        createAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.CreateTaskAssignmentRequest.fromBuffer(value),
        ($7.CreateTaskAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetTaskAssignmentRequest,
            $7.GetTaskAssignmentResponse>(
        'GetAssignment',
        getAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetTaskAssignmentRequest.fromBuffer(value),
        ($7.GetTaskAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ModifyTaskAssignmentRequest,
            $7.ModifyTaskAssignmentResponse>(
        'ModifyAssignment',
        modifyAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ModifyTaskAssignmentRequest.fromBuffer(value),
        ($7.ModifyTaskAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RemoveTaskAssignmentRequest,
            $7.RemoveTaskAssignmentResponse>(
        'RemoveAssignment',
        removeAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RemoveTaskAssignmentRequest.fromBuffer(value),
        ($7.RemoveTaskAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetAssignedTasksRequest,
            $7.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetAssignedTasksRequest.fromBuffer(value),
        ($7.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetUnassignedTasksRequest,
            $7.GetUnassignedTasksResponse>(
        'GetUnassignedTasks',
        getUnassignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetUnassignedTasksRequest.fromBuffer(value),
        ($7.GetUnassignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetAssignedTasksWithTaskInfoRequest,
            $7.GetAssignedTasksWithTaskInfoResponse>(
        'GetAssignedTasksWithTaskInfo',
        getAssignedTasksWithTaskInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetAssignedTasksWithTaskInfoRequest.fromBuffer(value),
        ($7.GetAssignedTasksWithTaskInfoResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$7.CreateTaskAssignmentResponse> createAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CreateTaskAssignmentRequest> request) async {
    return createAssignment(call, await request);
  }

  $async.Future<$7.GetTaskAssignmentResponse> getAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetTaskAssignmentRequest> request) async {
    return getAssignment(call, await request);
  }

  $async.Future<$7.ModifyTaskAssignmentResponse> modifyAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ModifyTaskAssignmentRequest> request) async {
    return modifyAssignment(call, await request);
  }

  $async.Future<$7.RemoveTaskAssignmentResponse> removeAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.RemoveTaskAssignmentRequest> request) async {
    return removeAssignment(call, await request);
  }

  $async.Future<$7.GetAssignedTasksResponse> getAssignedTasks_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$7.GetUnassignedTasksResponse> getUnassignedTasks_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetUnassignedTasksRequest> request) async {
    return getUnassignedTasks(call, await request);
  }

  $async.Future<$7.GetAssignedTasksWithTaskInfoResponse>
      getAssignedTasksWithTaskInfo_Pre($grpc.ServiceCall call,
          $async.Future<$7.GetAssignedTasksWithTaskInfoRequest> request) async {
    return getAssignedTasksWithTaskInfo(call, await request);
  }

  $async.Future<$7.CreateTaskAssignmentResponse> createAssignment(
      $grpc.ServiceCall call, $7.CreateTaskAssignmentRequest request);
  $async.Future<$7.GetTaskAssignmentResponse> getAssignment(
      $grpc.ServiceCall call, $7.GetTaskAssignmentRequest request);
  $async.Future<$7.ModifyTaskAssignmentResponse> modifyAssignment(
      $grpc.ServiceCall call, $7.ModifyTaskAssignmentRequest request);
  $async.Future<$7.RemoveTaskAssignmentResponse> removeAssignment(
      $grpc.ServiceCall call, $7.RemoveTaskAssignmentRequest request);
  $async.Future<$7.GetAssignedTasksResponse> getAssignedTasks(
      $grpc.ServiceCall call, $7.GetAssignedTasksRequest request);
  $async.Future<$7.GetUnassignedTasksResponse> getUnassignedTasks(
      $grpc.ServiceCall call, $7.GetUnassignedTasksRequest request);
  $async.Future<$7.GetAssignedTasksWithTaskInfoResponse>
      getAssignedTasksWithTaskInfo($grpc.ServiceCall call,
          $7.GetAssignedTasksWithTaskInfoRequest request);
}
