///
//  Generated code. Do not modify.
//  source: profile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'profile.pb.dart' as $8;
export 'profile.pb.dart';

class ProfileClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$8.CreateProfileRequest, $8.CreateProfileResponse>(
          '/profile.Profile/Create',
          ($8.CreateProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.CreateProfileResponse.fromBuffer(value));
  static final _$modify =
      $grpc.ClientMethod<$8.ModifyProfileRequest, $8.ModifyProfileResponse>(
          '/profile.Profile/Modify',
          ($8.ModifyProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.ModifyProfileResponse.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$8.GetProfileRequest, $8.GetProfileResponse>(
          '/profile.Profile/Get',
          ($8.GetProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.GetProfileResponse.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$8.GetProfileListRequest, $8.GetProfileListResponse>(
          '/profile.Profile/GetList',
          ($8.GetProfileListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.GetProfileListResponse.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$8.RemoveProfileRequest, $8.RemoveProfileResponse>(
          '/profile.Profile/Remove',
          ($8.RemoveProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.RemoveProfileResponse.fromBuffer(value));

  ProfileClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateProfileResponse> create(
      $8.CreateProfileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$8.ModifyProfileResponse> modify(
      $8.ModifyProfileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modify, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetProfileResponse> get($8.GetProfileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetProfileListResponse> getList(
      $8.GetProfileListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$8.RemoveProfileResponse> remove(
      $8.RemoveProfileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }
}

abstract class ProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'profile.Profile';

  ProfileServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$8.CreateProfileRequest, $8.CreateProfileResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.CreateProfileRequest.fromBuffer(value),
            ($8.CreateProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.ModifyProfileRequest, $8.ModifyProfileResponse>(
            'Modify',
            modify_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.ModifyProfileRequest.fromBuffer(value),
            ($8.ModifyProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetProfileRequest, $8.GetProfileResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetProfileRequest.fromBuffer(value),
        ($8.GetProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetProfileListRequest,
            $8.GetProfileListResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.GetProfileListRequest.fromBuffer(value),
        ($8.GetProfileListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.RemoveProfileRequest, $8.RemoveProfileResponse>(
            'Remove',
            remove_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.RemoveProfileRequest.fromBuffer(value),
            ($8.RemoveProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateProfileResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$8.CreateProfileRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$8.ModifyProfileResponse> modify_Pre($grpc.ServiceCall call,
      $async.Future<$8.ModifyProfileRequest> request) async {
    return modify(call, await request);
  }

  $async.Future<$8.GetProfileResponse> get_Pre($grpc.ServiceCall call,
      $async.Future<$8.GetProfileRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$8.GetProfileListResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$8.GetProfileListRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$8.RemoveProfileResponse> remove_Pre($grpc.ServiceCall call,
      $async.Future<$8.RemoveProfileRequest> request) async {
    return remove(call, await request);
  }

  $async.Future<$8.CreateProfileResponse> create(
      $grpc.ServiceCall call, $8.CreateProfileRequest request);
  $async.Future<$8.ModifyProfileResponse> modify(
      $grpc.ServiceCall call, $8.ModifyProfileRequest request);
  $async.Future<$8.GetProfileResponse> get(
      $grpc.ServiceCall call, $8.GetProfileRequest request);
  $async.Future<$8.GetProfileListResponse> getList(
      $grpc.ServiceCall call, $8.GetProfileListRequest request);
  $async.Future<$8.RemoveProfileResponse> remove(
      $grpc.ServiceCall call, $8.RemoveProfileRequest request);
}
