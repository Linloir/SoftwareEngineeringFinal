///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $6;
export 'auth.pb.dart';

class AuthClient extends $grpc.Client {
  static final _$authenticate =
      $grpc.ClientMethod<$6.AuthRequest, $6.AuthResponse>(
          '/auth.Auth/Authenticate',
          ($6.AuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.AuthResponse.fromBuffer(value));
  static final _$renewAuthN =
      $grpc.ClientMethod<$6.RenewAuthNRequest, $6.RenewAuthNResponse>(
          '/auth.Auth/RenewAuthN',
          ($6.RenewAuthNRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RenewAuthNResponse.fromBuffer(value));
  static final _$renewAuthZ =
      $grpc.ClientMethod<$6.RenewAuthZRequest, $6.RenewAuthZResponse>(
          '/auth.Auth/RenewAuthZ',
          ($6.RenewAuthZRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RenewAuthZResponse.fromBuffer(value));
  static final _$revokeAuth =
      $grpc.ClientMethod<$6.RevokeAuthRequest, $6.RevokeAuthResponse>(
          '/auth.Auth/RevokeAuth',
          ($6.RevokeAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RevokeAuthResponse.fromBuffer(value));
  static final _$requestVerif =
      $grpc.ClientMethod<$6.RequestVerifRequest, $6.RequestVerifResponse>(
          '/auth.Auth/RequestVerif',
          ($6.RequestVerifRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RequestVerifResponse.fromBuffer(value));
  static final _$validateVerif =
      $grpc.ClientMethod<$6.ValidateVerifRequest, $6.ValidateVerifResponse>(
          '/auth.Auth/ValidateVerif',
          ($6.ValidateVerifRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ValidateVerifResponse.fromBuffer(value));

  AuthClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.AuthResponse> authenticate($6.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
  }

  $grpc.ResponseFuture<$6.RenewAuthNResponse> renewAuthN(
      $6.RenewAuthNRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$renewAuthN, request, options: options);
  }

  $grpc.ResponseFuture<$6.RenewAuthZResponse> renewAuthZ(
      $6.RenewAuthZRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$renewAuthZ, request, options: options);
  }

  $grpc.ResponseFuture<$6.RevokeAuthResponse> revokeAuth(
      $6.RevokeAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuth, request, options: options);
  }

  $grpc.ResponseFuture<$6.RequestVerifResponse> requestVerif(
      $6.RequestVerifRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestVerif, request, options: options);
  }

  $grpc.ResponseFuture<$6.ValidateVerifResponse> validateVerif(
      $6.ValidateVerifRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateVerif, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.Auth';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.AuthRequest, $6.AuthResponse>(
        'Authenticate',
        authenticate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AuthRequest.fromBuffer(value),
        ($6.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RenewAuthNRequest, $6.RenewAuthNResponse>(
        'RenewAuthN',
        renewAuthN_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.RenewAuthNRequest.fromBuffer(value),
        ($6.RenewAuthNResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RenewAuthZRequest, $6.RenewAuthZResponse>(
        'RenewAuthZ',
        renewAuthZ_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.RenewAuthZRequest.fromBuffer(value),
        ($6.RenewAuthZResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RevokeAuthRequest, $6.RevokeAuthResponse>(
        'RevokeAuth',
        revokeAuth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.RevokeAuthRequest.fromBuffer(value),
        ($6.RevokeAuthResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.RequestVerifRequest, $6.RequestVerifResponse>(
            'RequestVerif',
            requestVerif_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.RequestVerifRequest.fromBuffer(value),
            ($6.RequestVerifResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.ValidateVerifRequest, $6.ValidateVerifResponse>(
            'ValidateVerif',
            validateVerif_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.ValidateVerifRequest.fromBuffer(value),
            ($6.ValidateVerifResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.AuthResponse> authenticate_Pre(
      $grpc.ServiceCall call, $async.Future<$6.AuthRequest> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$6.RenewAuthNResponse> renewAuthN_Pre($grpc.ServiceCall call,
      $async.Future<$6.RenewAuthNRequest> request) async {
    return renewAuthN(call, await request);
  }

  $async.Future<$6.RenewAuthZResponse> renewAuthZ_Pre($grpc.ServiceCall call,
      $async.Future<$6.RenewAuthZRequest> request) async {
    return renewAuthZ(call, await request);
  }

  $async.Future<$6.RevokeAuthResponse> revokeAuth_Pre($grpc.ServiceCall call,
      $async.Future<$6.RevokeAuthRequest> request) async {
    return revokeAuth(call, await request);
  }

  $async.Future<$6.RequestVerifResponse> requestVerif_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.RequestVerifRequest> request) async {
    return requestVerif(call, await request);
  }

  $async.Future<$6.ValidateVerifResponse> validateVerif_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ValidateVerifRequest> request) async {
    return validateVerif(call, await request);
  }

  $async.Future<$6.AuthResponse> authenticate(
      $grpc.ServiceCall call, $6.AuthRequest request);
  $async.Future<$6.RenewAuthNResponse> renewAuthN(
      $grpc.ServiceCall call, $6.RenewAuthNRequest request);
  $async.Future<$6.RenewAuthZResponse> renewAuthZ(
      $grpc.ServiceCall call, $6.RenewAuthZRequest request);
  $async.Future<$6.RevokeAuthResponse> revokeAuth(
      $grpc.ServiceCall call, $6.RevokeAuthRequest request);
  $async.Future<$6.RequestVerifResponse> requestVerif(
      $grpc.ServiceCall call, $6.RequestVerifRequest request);
  $async.Future<$6.ValidateVerifResponse> validateVerif(
      $grpc.ServiceCall call, $6.ValidateVerifRequest request);
}
