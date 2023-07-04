///
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'schedule.pb.dart' as $6;
import 'common.pb.dart' as $2;
export 'schedule.pb.dart';

class ScheduleServiceClient extends $grpc.Client {
  static final _$putSchedule = $grpc.ClientMethod<$6.ScheduleInfo, $2.Empty>(
      '/schedule.ScheduleService/PutSchedule',
      ($6.ScheduleInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchSchedule =
      $grpc.ClientMethod<$2.FetchRequest, $6.ScheduleList>(
          '/schedule.ScheduleService/FetchSchedule',
          ($2.FetchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.ScheduleList.fromBuffer(value));

  ScheduleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putSchedule($6.ScheduleInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$6.ScheduleList> fetchSchedule($2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchSchedule, request, options: options);
  }
}

abstract class ScheduleServiceBase extends $grpc.Service {
  $core.String get $name => 'schedule.ScheduleService';

  ScheduleServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.ScheduleInfo, $2.Empty>(
        'PutSchedule',
        putSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ScheduleInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $6.ScheduleList>(
        'FetchSchedule',
        fetchSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($6.ScheduleList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putSchedule_Pre(
      $grpc.ServiceCall call, $async.Future<$6.ScheduleInfo> request) async {
    return putSchedule(call, await request);
  }

  $async.Future<$6.ScheduleList> fetchSchedule_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchSchedule(call, await request);
  }

  $async.Future<$2.Empty> putSchedule(
      $grpc.ServiceCall call, $6.ScheduleInfo request);
  $async.Future<$6.ScheduleList> fetchSchedule(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
