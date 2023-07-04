///
//  Generated code. Do not modify.
//  source: profile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'profile.pb.dart' as $1;
import 'common.pb.dart' as $2;
export 'profile.pb.dart';

class ProfileServiceClient extends $grpc.Client {
  static final _$putProfile = $grpc.ClientMethod<$1.ProfileInfo, $2.Empty>(
      '/profile.ProfileService/PutProfile',
      ($1.ProfileInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchProfile =
      $grpc.ClientMethod<$2.FetchRequest, $1.ProfileList>(
          '/profile.ProfileService/FetchProfile',
          ($2.FetchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ProfileList.fromBuffer(value));

  ProfileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putProfile($1.ProfileInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putProfile, request, options: options);
  }

  $grpc.ResponseFuture<$1.ProfileList> fetchProfile($2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchProfile, request, options: options);
  }
}

abstract class ProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'profile.ProfileService';

  ProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ProfileInfo, $2.Empty>(
        'PutProfile',
        putProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ProfileInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $1.ProfileList>(
        'FetchProfile',
        fetchProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($1.ProfileList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ProfileInfo> request) async {
    return putProfile(call, await request);
  }

  $async.Future<$1.ProfileList> fetchProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchProfile(call, await request);
  }

  $async.Future<$2.Empty> putProfile(
      $grpc.ServiceCall call, $1.ProfileInfo request);
  $async.Future<$1.ProfileList> fetchProfile(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
