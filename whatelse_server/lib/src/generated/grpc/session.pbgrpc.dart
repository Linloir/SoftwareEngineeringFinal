///
//  Generated code. Do not modify.
//  source: session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'session.pb.dart' as $5;
import 'common.pb.dart' as $2;
export 'session.pb.dart';

class SessionServiceClient extends $grpc.Client {
  static final _$putSession = $grpc.ClientMethod<$5.SessionInfo, $2.Empty>(
      '/session.SessionService/PutSession',
      ($5.SessionInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchSessoin =
      $grpc.ClientMethod<$2.FetchRequest, $5.SessionList>(
          '/session.SessionService/FetchSessoin',
          ($2.FetchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.SessionList.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putSession($5.SessionInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.SessionList> fetchSessoin($2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchSessoin, request, options: options);
  }
}

abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'session.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.SessionInfo, $2.Empty>(
        'PutSession',
        putSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SessionInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $5.SessionList>(
        'FetchSessoin',
        fetchSessoin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($5.SessionList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putSession_Pre(
      $grpc.ServiceCall call, $async.Future<$5.SessionInfo> request) async {
    return putSession(call, await request);
  }

  $async.Future<$5.SessionList> fetchSessoin_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchSessoin(call, await request);
  }

  $async.Future<$2.Empty> putSession(
      $grpc.ServiceCall call, $5.SessionInfo request);
  $async.Future<$5.SessionList> fetchSessoin(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
