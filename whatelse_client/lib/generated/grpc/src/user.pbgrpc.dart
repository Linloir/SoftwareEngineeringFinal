///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $9;
export 'user.pb.dart';

class UserClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$9.UserRegisterRequest, $9.UserRegisterResponse>(
          '/user.User/Register',
          ($9.UserRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserRegisterResponse.fromBuffer(value));
  static final _$checkClaim =
      $grpc.ClientMethod<$9.UserCheckClaimRequest, $9.UserCheckClaimResponse>(
          '/user.User/CheckClaim',
          ($9.UserCheckClaimRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserCheckClaimResponse.fromBuffer(value));
  static final _$modName =
      $grpc.ClientMethod<$9.UserModNameRequest, $9.UserModNameResponse>(
          '/user.User/ModName',
          ($9.UserModNameRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserModNameResponse.fromBuffer(value));
  static final _$modEmail =
      $grpc.ClientMethod<$9.UserModEmailRequest, $9.UserModEmailResponse>(
          '/user.User/ModEmail',
          ($9.UserModEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserModEmailResponse.fromBuffer(value));
  static final _$modPhone =
      $grpc.ClientMethod<$9.UserModPhoneRequest, $9.UserModPhoneResponse>(
          '/user.User/ModPhone',
          ($9.UserModPhoneRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserModPhoneResponse.fromBuffer(value));
  static final _$modPassword =
      $grpc.ClientMethod<$9.UserModPasswordRequest, $9.UserModPasswordResponse>(
          '/user.User/ModPassword',
          ($9.UserModPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserModPasswordResponse.fromBuffer(value));
  static final _$modAvatar =
      $grpc.ClientMethod<$9.UserModAvatarRequest, $9.UserModAvatarResponse>(
          '/user.User/ModAvatar',
          ($9.UserModAvatarRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserModAvatarResponse.fromBuffer(value));
  static final _$modUnionId =
      $grpc.ClientMethod<$9.UserModUnionIdRequest, $9.UserModUnionIdResponse>(
          '/user.User/ModUnionId',
          ($9.UserModUnionIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserModUnionIdResponse.fromBuffer(value));
  static final _$modTencentId = $grpc.ClientMethod<$9.UserModTencentIdRequest,
          $9.UserModTencentIdResponse>(
      '/user.User/ModTencentId',
      ($9.UserModTencentIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.UserModTencentIdResponse.fromBuffer(value));
  static final _$modAppleId =
      $grpc.ClientMethod<$9.UserModAppleIdRequest, $9.UserModAppleIdResponse>(
          '/user.User/ModAppleId',
          ($9.UserModAppleIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserModAppleIdResponse.fromBuffer(value));
  static final _$info =
      $grpc.ClientMethod<$9.UserInfoRequest, $9.UserInfoResponse>(
          '/user.User/Info',
          ($9.UserInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserInfoResponse.fromBuffer(value));
  static final _$cancel =
      $grpc.ClientMethod<$9.UserCancelRequest, $9.UserCancelResponse>(
          '/user.User/Cancel',
          ($9.UserCancelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserCancelResponse.fromBuffer(value));

  UserClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$9.UserRegisterResponse> register(
      $9.UserRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserCheckClaimResponse> checkClaim(
      $9.UserCheckClaimRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkClaim, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserModNameResponse> modName(
      $9.UserModNameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modName, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserModEmailResponse> modEmail(
      $9.UserModEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modEmail, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserModPhoneResponse> modPhone(
      $9.UserModPhoneRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modPhone, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserModPasswordResponse> modPassword(
      $9.UserModPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modPassword, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserModAvatarResponse> modAvatar(
      $9.UserModAvatarRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modAvatar, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserModUnionIdResponse> modUnionId(
      $9.UserModUnionIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modUnionId, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserModTencentIdResponse> modTencentId(
      $9.UserModTencentIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modTencentId, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserModAppleIdResponse> modAppleId(
      $9.UserModAppleIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modAppleId, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserInfoResponse> info($9.UserInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$info, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserCancelResponse> cancel(
      $9.UserCancelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancel, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.User';

  UserServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$9.UserRegisterRequest, $9.UserRegisterResponse>(
            'Register',
            register_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.UserRegisterRequest.fromBuffer(value),
            ($9.UserRegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UserCheckClaimRequest,
            $9.UserCheckClaimResponse>(
        'CheckClaim',
        checkClaim_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UserCheckClaimRequest.fromBuffer(value),
        ($9.UserCheckClaimResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.UserModNameRequest, $9.UserModNameResponse>(
            'ModName',
            modName_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.UserModNameRequest.fromBuffer(value),
            ($9.UserModNameResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.UserModEmailRequest, $9.UserModEmailResponse>(
            'ModEmail',
            modEmail_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.UserModEmailRequest.fromBuffer(value),
            ($9.UserModEmailResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.UserModPhoneRequest, $9.UserModPhoneResponse>(
            'ModPhone',
            modPhone_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.UserModPhoneRequest.fromBuffer(value),
            ($9.UserModPhoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UserModPasswordRequest,
            $9.UserModPasswordResponse>(
        'ModPassword',
        modPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UserModPasswordRequest.fromBuffer(value),
        ($9.UserModPasswordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.UserModAvatarRequest, $9.UserModAvatarResponse>(
            'ModAvatar',
            modAvatar_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.UserModAvatarRequest.fromBuffer(value),
            ($9.UserModAvatarResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UserModUnionIdRequest,
            $9.UserModUnionIdResponse>(
        'ModUnionId',
        modUnionId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UserModUnionIdRequest.fromBuffer(value),
        ($9.UserModUnionIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UserModTencentIdRequest,
            $9.UserModTencentIdResponse>(
        'ModTencentId',
        modTencentId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UserModTencentIdRequest.fromBuffer(value),
        ($9.UserModTencentIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UserModAppleIdRequest,
            $9.UserModAppleIdResponse>(
        'ModAppleId',
        modAppleId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UserModAppleIdRequest.fromBuffer(value),
        ($9.UserModAppleIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UserInfoRequest, $9.UserInfoResponse>(
        'Info',
        info_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UserInfoRequest.fromBuffer(value),
        ($9.UserInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UserCancelRequest, $9.UserCancelResponse>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UserCancelRequest.fromBuffer(value),
        ($9.UserCancelResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.UserRegisterResponse> register_Pre($grpc.ServiceCall call,
      $async.Future<$9.UserRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$9.UserCheckClaimResponse> checkClaim_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.UserCheckClaimRequest> request) async {
    return checkClaim(call, await request);
  }

  $async.Future<$9.UserModNameResponse> modName_Pre($grpc.ServiceCall call,
      $async.Future<$9.UserModNameRequest> request) async {
    return modName(call, await request);
  }

  $async.Future<$9.UserModEmailResponse> modEmail_Pre($grpc.ServiceCall call,
      $async.Future<$9.UserModEmailRequest> request) async {
    return modEmail(call, await request);
  }

  $async.Future<$9.UserModPhoneResponse> modPhone_Pre($grpc.ServiceCall call,
      $async.Future<$9.UserModPhoneRequest> request) async {
    return modPhone(call, await request);
  }

  $async.Future<$9.UserModPasswordResponse> modPassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.UserModPasswordRequest> request) async {
    return modPassword(call, await request);
  }

  $async.Future<$9.UserModAvatarResponse> modAvatar_Pre($grpc.ServiceCall call,
      $async.Future<$9.UserModAvatarRequest> request) async {
    return modAvatar(call, await request);
  }

  $async.Future<$9.UserModUnionIdResponse> modUnionId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.UserModUnionIdRequest> request) async {
    return modUnionId(call, await request);
  }

  $async.Future<$9.UserModTencentIdResponse> modTencentId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.UserModTencentIdRequest> request) async {
    return modTencentId(call, await request);
  }

  $async.Future<$9.UserModAppleIdResponse> modAppleId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.UserModAppleIdRequest> request) async {
    return modAppleId(call, await request);
  }

  $async.Future<$9.UserInfoResponse> info_Pre(
      $grpc.ServiceCall call, $async.Future<$9.UserInfoRequest> request) async {
    return info(call, await request);
  }

  $async.Future<$9.UserCancelResponse> cancel_Pre($grpc.ServiceCall call,
      $async.Future<$9.UserCancelRequest> request) async {
    return cancel(call, await request);
  }

  $async.Future<$9.UserRegisterResponse> register(
      $grpc.ServiceCall call, $9.UserRegisterRequest request);
  $async.Future<$9.UserCheckClaimResponse> checkClaim(
      $grpc.ServiceCall call, $9.UserCheckClaimRequest request);
  $async.Future<$9.UserModNameResponse> modName(
      $grpc.ServiceCall call, $9.UserModNameRequest request);
  $async.Future<$9.UserModEmailResponse> modEmail(
      $grpc.ServiceCall call, $9.UserModEmailRequest request);
  $async.Future<$9.UserModPhoneResponse> modPhone(
      $grpc.ServiceCall call, $9.UserModPhoneRequest request);
  $async.Future<$9.UserModPasswordResponse> modPassword(
      $grpc.ServiceCall call, $9.UserModPasswordRequest request);
  $async.Future<$9.UserModAvatarResponse> modAvatar(
      $grpc.ServiceCall call, $9.UserModAvatarRequest request);
  $async.Future<$9.UserModUnionIdResponse> modUnionId(
      $grpc.ServiceCall call, $9.UserModUnionIdRequest request);
  $async.Future<$9.UserModTencentIdResponse> modTencentId(
      $grpc.ServiceCall call, $9.UserModTencentIdRequest request);
  $async.Future<$9.UserModAppleIdResponse> modAppleId(
      $grpc.ServiceCall call, $9.UserModAppleIdRequest request);
  $async.Future<$9.UserInfoResponse> info(
      $grpc.ServiceCall call, $9.UserInfoRequest request);
  $async.Future<$9.UserCancelResponse> cancel(
      $grpc.ServiceCall call, $9.UserCancelRequest request);
}
