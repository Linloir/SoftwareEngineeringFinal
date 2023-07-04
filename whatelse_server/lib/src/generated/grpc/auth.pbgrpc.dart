///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $14;
export 'auth.pb.dart';

class AuthClient extends $grpc.Client {
  static final _$authenticate =
      $grpc.ClientMethod<$14.AuthRequest, $14.AuthResponse>(
          '/auth.Auth/Authenticate',
          ($14.AuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $14.AuthResponse.fromBuffer(value));
  static final _$renewAuthN =
      $grpc.ClientMethod<$14.RenewAuthNRequest, $14.RenewAuthNResponse>(
          '/auth.Auth/RenewAuthN',
          ($14.RenewAuthNRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $14.RenewAuthNResponse.fromBuffer(value));
  static final _$renewAuthZ =
      $grpc.ClientMethod<$14.RenewAuthZRequest, $14.RenewAuthZResponse>(
          '/auth.Auth/RenewAuthZ',
          ($14.RenewAuthZRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $14.RenewAuthZResponse.fromBuffer(value));
  static final _$revokeAuth =
      $grpc.ClientMethod<$14.RevokeAuthRequest, $14.RevokeAuthResponse>(
          '/auth.Auth/RevokeAuth',
          ($14.RevokeAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $14.RevokeAuthResponse.fromBuffer(value));
  static final _$requestVerif =
      $grpc.ClientMethod<$14.RequestVerifRequest, $14.RequestVerifResponse>(
          '/auth.Auth/RequestVerif',
          ($14.RequestVerifRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $14.RequestVerifResponse.fromBuffer(value));
  static final _$validateVerif =
      $grpc.ClientMethod<$14.ValidateVerifRequest, $14.ValidateVerifResponse>(
          '/auth.Auth/ValidateVerif',
          ($14.ValidateVerifRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $14.ValidateVerifResponse.fromBuffer(value));

  AuthClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$14.AuthResponse> authenticate($14.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
  }

  $grpc.ResponseFuture<$14.RenewAuthNResponse> renewAuthN(
      $14.RenewAuthNRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$renewAuthN, request, options: options);
  }

  $grpc.ResponseFuture<$14.RenewAuthZResponse> renewAuthZ(
      $14.RenewAuthZRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$renewAuthZ, request, options: options);
  }

  $grpc.ResponseFuture<$14.RevokeAuthResponse> revokeAuth(
      $14.RevokeAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuth, request, options: options);
  }

  $grpc.ResponseFuture<$14.RequestVerifResponse> requestVerif(
      $14.RequestVerifRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestVerif, request, options: options);
  }

  $grpc.ResponseFuture<$14.ValidateVerifResponse> validateVerif(
      $14.ValidateVerifRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateVerif, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.Auth';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.AuthRequest, $14.AuthResponse>(
        'Authenticate',
        authenticate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AuthRequest.fromBuffer(value),
        ($14.AuthResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$14.RenewAuthNRequest, $14.RenewAuthNResponse>(
            'RenewAuthN',
            renewAuthN_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $14.RenewAuthNRequest.fromBuffer(value),
            ($14.RenewAuthNResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$14.RenewAuthZRequest, $14.RenewAuthZResponse>(
            'RenewAuthZ',
            renewAuthZ_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $14.RenewAuthZRequest.fromBuffer(value),
            ($14.RenewAuthZResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$14.RevokeAuthRequest, $14.RevokeAuthResponse>(
            'RevokeAuth',
            revokeAuth_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $14.RevokeAuthRequest.fromBuffer(value),
            ($14.RevokeAuthResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$14.RequestVerifRequest, $14.RequestVerifResponse>(
            'RequestVerif',
            requestVerif_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $14.RequestVerifRequest.fromBuffer(value),
            ($14.RequestVerifResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ValidateVerifRequest,
            $14.ValidateVerifResponse>(
        'ValidateVerif',
        validateVerif_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $14.ValidateVerifRequest.fromBuffer(value),
        ($14.ValidateVerifResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.AuthResponse> authenticate_Pre(
      $grpc.ServiceCall call, $async.Future<$14.AuthRequest> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$14.RenewAuthNResponse> renewAuthN_Pre($grpc.ServiceCall call,
      $async.Future<$14.RenewAuthNRequest> request) async {
    return renewAuthN(call, await request);
  }

  $async.Future<$14.RenewAuthZResponse> renewAuthZ_Pre($grpc.ServiceCall call,
      $async.Future<$14.RenewAuthZRequest> request) async {
    return renewAuthZ(call, await request);
  }

  $async.Future<$14.RevokeAuthResponse> revokeAuth_Pre($grpc.ServiceCall call,
      $async.Future<$14.RevokeAuthRequest> request) async {
    return revokeAuth(call, await request);
  }

  $async.Future<$14.RequestVerifResponse> requestVerif_Pre(
      $grpc.ServiceCall call,
      $async.Future<$14.RequestVerifRequest> request) async {
    return requestVerif(call, await request);
  }

  $async.Future<$14.ValidateVerifResponse> validateVerif_Pre(
      $grpc.ServiceCall call,
      $async.Future<$14.ValidateVerifRequest> request) async {
    return validateVerif(call, await request);
  }

  $async.Future<$14.AuthResponse> authenticate(
      $grpc.ServiceCall call, $14.AuthRequest request);
  $async.Future<$14.RenewAuthNResponse> renewAuthN(
      $grpc.ServiceCall call, $14.RenewAuthNRequest request);
  $async.Future<$14.RenewAuthZResponse> renewAuthZ(
      $grpc.ServiceCall call, $14.RenewAuthZRequest request);
  $async.Future<$14.RevokeAuthResponse> revokeAuth(
      $grpc.ServiceCall call, $14.RevokeAuthRequest request);
  $async.Future<$14.RequestVerifResponse> requestVerif(
      $grpc.ServiceCall call, $14.RequestVerifRequest request);
  $async.Future<$14.ValidateVerifResponse> validateVerif(
      $grpc.ServiceCall call, $14.ValidateVerifRequest request);
}
