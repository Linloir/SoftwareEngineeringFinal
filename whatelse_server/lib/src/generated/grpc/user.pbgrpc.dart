///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
export 'user.pb.dart';

class UserClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$0.UserRegisterRequest, $0.UserRegisterResponse>(
          '/user.User/Register',
          ($0.UserRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserRegisterResponse.fromBuffer(value));
  static final _$checkClaim =
      $grpc.ClientMethod<$0.UserCheckClaimRequest, $0.UserCheckClaimResponse>(
          '/user.User/CheckClaim',
          ($0.UserCheckClaimRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserCheckClaimResponse.fromBuffer(value));
  static final _$modName =
      $grpc.ClientMethod<$0.UserModNameRequest, $0.UserModNameResponse>(
          '/user.User/ModName',
          ($0.UserModNameRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserModNameResponse.fromBuffer(value));
  static final _$modEmail =
      $grpc.ClientMethod<$0.UserModEmailRequest, $0.UserModEmailResponse>(
          '/user.User/ModEmail',
          ($0.UserModEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserModEmailResponse.fromBuffer(value));
  static final _$modPhone =
      $grpc.ClientMethod<$0.UserModPhoneRequest, $0.UserModPhoneResponse>(
          '/user.User/ModPhone',
          ($0.UserModPhoneRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserModPhoneResponse.fromBuffer(value));
  static final _$modPassword =
      $grpc.ClientMethod<$0.UserModPasswordRequest, $0.UserModPasswordResponse>(
          '/user.User/ModPassword',
          ($0.UserModPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserModPasswordResponse.fromBuffer(value));
  static final _$modAvatar =
      $grpc.ClientMethod<$0.UserModAvatarRequest, $0.UserModAvatarResponse>(
          '/user.User/ModAvatar',
          ($0.UserModAvatarRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserModAvatarResponse.fromBuffer(value));
  static final _$modUnionId =
      $grpc.ClientMethod<$0.UserModUnionIdRequest, $0.UserModUnionIdResponse>(
          '/user.User/ModUnionId',
          ($0.UserModUnionIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserModUnionIdResponse.fromBuffer(value));
  static final _$modTencentId = $grpc.ClientMethod<$0.UserModTencentIdRequest,
          $0.UserModTencentIdResponse>(
      '/user.User/ModTencentId',
      ($0.UserModTencentIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UserModTencentIdResponse.fromBuffer(value));
  static final _$modAppleId =
      $grpc.ClientMethod<$0.UserModAppleIdRequest, $0.UserModAppleIdResponse>(
          '/user.User/ModAppleId',
          ($0.UserModAppleIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserModAppleIdResponse.fromBuffer(value));
  static final _$info =
      $grpc.ClientMethod<$0.UserInfoRequest, $0.UserInfoResponse>(
          '/user.User/Info',
          ($0.UserInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserInfoResponse.fromBuffer(value));
  static final _$cancel =
      $grpc.ClientMethod<$0.UserCancelRequest, $0.UserCancelResponse>(
          '/user.User/Cancel',
          ($0.UserCancelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserCancelResponse.fromBuffer(value));

  UserClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserRegisterResponse> register(
      $0.UserRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserCheckClaimResponse> checkClaim(
      $0.UserCheckClaimRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkClaim, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserModNameResponse> modName(
      $0.UserModNameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modName, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserModEmailResponse> modEmail(
      $0.UserModEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modEmail, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserModPhoneResponse> modPhone(
      $0.UserModPhoneRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modPhone, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserModPasswordResponse> modPassword(
      $0.UserModPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modPassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserModAvatarResponse> modAvatar(
      $0.UserModAvatarRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modAvatar, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserModUnionIdResponse> modUnionId(
      $0.UserModUnionIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modUnionId, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserModTencentIdResponse> modTencentId(
      $0.UserModTencentIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modTencentId, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserModAppleIdResponse> modAppleId(
      $0.UserModAppleIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modAppleId, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserInfoResponse> info($0.UserInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$info, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserCancelResponse> cancel(
      $0.UserCancelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancel, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.User';

  UserServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.UserRegisterRequest, $0.UserRegisterResponse>(
            'Register',
            register_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UserRegisterRequest.fromBuffer(value),
            ($0.UserRegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserCheckClaimRequest,
            $0.UserCheckClaimResponse>(
        'CheckClaim',
        checkClaim_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UserCheckClaimRequest.fromBuffer(value),
        ($0.UserCheckClaimResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UserModNameRequest, $0.UserModNameResponse>(
            'ModName',
            modName_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UserModNameRequest.fromBuffer(value),
            ($0.UserModNameResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UserModEmailRequest, $0.UserModEmailResponse>(
            'ModEmail',
            modEmail_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UserModEmailRequest.fromBuffer(value),
            ($0.UserModEmailResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UserModPhoneRequest, $0.UserModPhoneResponse>(
            'ModPhone',
            modPhone_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UserModPhoneRequest.fromBuffer(value),
            ($0.UserModPhoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserModPasswordRequest,
            $0.UserModPasswordResponse>(
        'ModPassword',
        modPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UserModPasswordRequest.fromBuffer(value),
        ($0.UserModPasswordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UserModAvatarRequest, $0.UserModAvatarResponse>(
            'ModAvatar',
            modAvatar_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UserModAvatarRequest.fromBuffer(value),
            ($0.UserModAvatarResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserModUnionIdRequest,
            $0.UserModUnionIdResponse>(
        'ModUnionId',
        modUnionId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UserModUnionIdRequest.fromBuffer(value),
        ($0.UserModUnionIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserModTencentIdRequest,
            $0.UserModTencentIdResponse>(
        'ModTencentId',
        modTencentId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UserModTencentIdRequest.fromBuffer(value),
        ($0.UserModTencentIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserModAppleIdRequest,
            $0.UserModAppleIdResponse>(
        'ModAppleId',
        modAppleId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UserModAppleIdRequest.fromBuffer(value),
        ($0.UserModAppleIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfoRequest, $0.UserInfoResponse>(
        'Info',
        info_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfoRequest.fromBuffer(value),
        ($0.UserInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserCancelRequest, $0.UserCancelResponse>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserCancelRequest.fromBuffer(value),
        ($0.UserCancelResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserRegisterResponse> register_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.UserCheckClaimResponse> checkClaim_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UserCheckClaimRequest> request) async {
    return checkClaim(call, await request);
  }

  $async.Future<$0.UserModNameResponse> modName_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserModNameRequest> request) async {
    return modName(call, await request);
  }

  $async.Future<$0.UserModEmailResponse> modEmail_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserModEmailRequest> request) async {
    return modEmail(call, await request);
  }

  $async.Future<$0.UserModPhoneResponse> modPhone_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserModPhoneRequest> request) async {
    return modPhone(call, await request);
  }

  $async.Future<$0.UserModPasswordResponse> modPassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UserModPasswordRequest> request) async {
    return modPassword(call, await request);
  }

  $async.Future<$0.UserModAvatarResponse> modAvatar_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserModAvatarRequest> request) async {
    return modAvatar(call, await request);
  }

  $async.Future<$0.UserModUnionIdResponse> modUnionId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UserModUnionIdRequest> request) async {
    return modUnionId(call, await request);
  }

  $async.Future<$0.UserModTencentIdResponse> modTencentId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UserModTencentIdRequest> request) async {
    return modTencentId(call, await request);
  }

  $async.Future<$0.UserModAppleIdResponse> modAppleId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UserModAppleIdRequest> request) async {
    return modAppleId(call, await request);
  }

  $async.Future<$0.UserInfoResponse> info_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserInfoRequest> request) async {
    return info(call, await request);
  }

  $async.Future<$0.UserCancelResponse> cancel_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserCancelRequest> request) async {
    return cancel(call, await request);
  }

  $async.Future<$0.UserRegisterResponse> register(
      $grpc.ServiceCall call, $0.UserRegisterRequest request);
  $async.Future<$0.UserCheckClaimResponse> checkClaim(
      $grpc.ServiceCall call, $0.UserCheckClaimRequest request);
  $async.Future<$0.UserModNameResponse> modName(
      $grpc.ServiceCall call, $0.UserModNameRequest request);
  $async.Future<$0.UserModEmailResponse> modEmail(
      $grpc.ServiceCall call, $0.UserModEmailRequest request);
  $async.Future<$0.UserModPhoneResponse> modPhone(
      $grpc.ServiceCall call, $0.UserModPhoneRequest request);
  $async.Future<$0.UserModPasswordResponse> modPassword(
      $grpc.ServiceCall call, $0.UserModPasswordRequest request);
  $async.Future<$0.UserModAvatarResponse> modAvatar(
      $grpc.ServiceCall call, $0.UserModAvatarRequest request);
  $async.Future<$0.UserModUnionIdResponse> modUnionId(
      $grpc.ServiceCall call, $0.UserModUnionIdRequest request);
  $async.Future<$0.UserModTencentIdResponse> modTencentId(
      $grpc.ServiceCall call, $0.UserModTencentIdRequest request);
  $async.Future<$0.UserModAppleIdResponse> modAppleId(
      $grpc.ServiceCall call, $0.UserModAppleIdRequest request);
  $async.Future<$0.UserInfoResponse> info(
      $grpc.ServiceCall call, $0.UserInfoRequest request);
  $async.Future<$0.UserCancelResponse> cancel(
      $grpc.ServiceCall call, $0.UserCancelRequest request);
}
