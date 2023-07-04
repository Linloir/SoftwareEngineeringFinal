///
//  Generated code. Do not modify.
//  source: record.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'record.pb.dart' as $11;
import 'common.pb.dart' as $2;
export 'record.pb.dart';

class RecordServiceClient extends $grpc.Client {
  static final _$putRecord = $grpc.ClientMethod<$11.RecordInfo, $2.Empty>(
      '/record.RecordService/PutRecord',
      ($11.RecordInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchRecord =
      $grpc.ClientMethod<$2.FetchRequest, $11.RecordList>(
          '/record.RecordService/FetchRecord',
          ($2.FetchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $11.RecordList.fromBuffer(value));

  RecordServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putRecord($11.RecordInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putRecord, request, options: options);
  }

  $grpc.ResponseFuture<$11.RecordList> fetchRecord($2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchRecord, request, options: options);
  }
}

abstract class RecordServiceBase extends $grpc.Service {
  $core.String get $name => 'record.RecordService';

  RecordServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.RecordInfo, $2.Empty>(
        'PutRecord',
        putRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.RecordInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $11.RecordList>(
        'FetchRecord',
        fetchRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($11.RecordList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putRecord_Pre(
      $grpc.ServiceCall call, $async.Future<$11.RecordInfo> request) async {
    return putRecord(call, await request);
  }

  $async.Future<$11.RecordList> fetchRecord_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchRecord(call, await request);
  }

  $async.Future<$2.Empty> putRecord(
      $grpc.ServiceCall call, $11.RecordInfo request);
  $async.Future<$11.RecordList> fetchRecord(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
