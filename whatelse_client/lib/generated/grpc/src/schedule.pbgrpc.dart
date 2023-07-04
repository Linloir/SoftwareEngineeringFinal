///
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'schedule.pb.dart' as $0;
export 'schedule.pb.dart';

class ScheduleClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.CreateScheduleRequest, $0.CreateScheduleResponse>(
          '/schedule.Schedule/Create',
          ($0.CreateScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateScheduleResponse.fromBuffer(value));
  static final _$modify =
      $grpc.ClientMethod<$0.ModifyScheduleRequest, $0.ModifyScheduleResponse>(
          '/schedule.Schedule/Modify',
          ($0.ModifyScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ModifyScheduleResponse.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$0.GetScheduleRequest, $0.GetScheduleResponse>(
          '/schedule.Schedule/Get',
          ($0.GetScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetScheduleResponse.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$0.RemoveScheduleRequest, $0.RemoveScheduleResponse>(
          '/schedule.Schedule/Remove',
          ($0.RemoveScheduleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveScheduleResponse.fromBuffer(value));
  static final _$getTaskSchedules = $grpc.ClientMethod<
          $0.GetTaskSchedulesRequest, $0.GetTaskSchedulesResponse>(
      '/schedule.Schedule/GetTaskSchedules',
      ($0.GetTaskSchedulesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetTaskSchedulesResponse.fromBuffer(value));
  static final _$getAllSchedules =
      $grpc.ClientMethod<$0.GetAllSchedulesRequest, $0.GetAllSchedulesResponse>(
          '/schedule.Schedule/GetAllSchedules',
          ($0.GetAllSchedulesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetAllSchedulesResponse.fromBuffer(value));

  ScheduleClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateScheduleResponse> create(
      $0.CreateScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.ModifyScheduleResponse> modify(
      $0.ModifyScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modify, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetScheduleResponse> get(
      $0.GetScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveScheduleResponse> remove(
      $0.RemoveScheduleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTaskSchedulesResponse> getTaskSchedules(
      $0.GetTaskSchedulesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTaskSchedules, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAllSchedulesResponse> getAllSchedules(
      $0.GetAllSchedulesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllSchedules, request, options: options);
  }
}

abstract class ScheduleServiceBase extends $grpc.Service {
  $core.String get $name => 'schedule.Schedule';

  ScheduleServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateScheduleRequest,
            $0.CreateScheduleResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateScheduleRequest.fromBuffer(value),
        ($0.CreateScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ModifyScheduleRequest,
            $0.ModifyScheduleResponse>(
        'Modify',
        modify_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ModifyScheduleRequest.fromBuffer(value),
        ($0.ModifyScheduleResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetScheduleRequest, $0.GetScheduleResponse>(
            'Get',
            get_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetScheduleRequest.fromBuffer(value),
            ($0.GetScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveScheduleRequest,
            $0.RemoveScheduleResponse>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RemoveScheduleRequest.fromBuffer(value),
        ($0.RemoveScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTaskSchedulesRequest,
            $0.GetTaskSchedulesResponse>(
        'GetTaskSchedules',
        getTaskSchedules_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetTaskSchedulesRequest.fromBuffer(value),
        ($0.GetTaskSchedulesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAllSchedulesRequest,
            $0.GetAllSchedulesResponse>(
        'GetAllSchedules',
        getAllSchedules_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetAllSchedulesRequest.fromBuffer(value),
        ($0.GetAllSchedulesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateScheduleResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateScheduleRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.ModifyScheduleResponse> modify_Pre($grpc.ServiceCall call,
      $async.Future<$0.ModifyScheduleRequest> request) async {
    return modify(call, await request);
  }

  $async.Future<$0.GetScheduleResponse> get_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetScheduleRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$0.RemoveScheduleResponse> remove_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveScheduleRequest> request) async {
    return remove(call, await request);
  }

  $async.Future<$0.GetTaskSchedulesResponse> getTaskSchedules_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetTaskSchedulesRequest> request) async {
    return getTaskSchedules(call, await request);
  }

  $async.Future<$0.GetAllSchedulesResponse> getAllSchedules_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAllSchedulesRequest> request) async {
    return getAllSchedules(call, await request);
  }

  $async.Future<$0.CreateScheduleResponse> create(
      $grpc.ServiceCall call, $0.CreateScheduleRequest request);
  $async.Future<$0.ModifyScheduleResponse> modify(
      $grpc.ServiceCall call, $0.ModifyScheduleRequest request);
  $async.Future<$0.GetScheduleResponse> get(
      $grpc.ServiceCall call, $0.GetScheduleRequest request);
  $async.Future<$0.RemoveScheduleResponse> remove(
      $grpc.ServiceCall call, $0.RemoveScheduleRequest request);
  $async.Future<$0.GetTaskSchedulesResponse> getTaskSchedules(
      $grpc.ServiceCall call, $0.GetTaskSchedulesRequest request);
  $async.Future<$0.GetAllSchedulesResponse> getAllSchedules(
      $grpc.ServiceCall call, $0.GetAllSchedulesRequest request);
}
