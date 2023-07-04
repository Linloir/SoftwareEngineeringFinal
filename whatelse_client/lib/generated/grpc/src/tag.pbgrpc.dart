///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tag.pb.dart' as $3;
export 'tag.pb.dart';

class TagClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$3.CreateTagRequest, $3.CreateTagResponse>(
          '/tag.Tag/Create',
          ($3.CreateTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CreateTagResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$3.GetTagRequest, $3.GetTagResponse>(
      '/tag.Tag/Get',
      ($3.GetTagRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetTagResponse.fromBuffer(value));
  static final _$modify =
      $grpc.ClientMethod<$3.ModifyTagRequest, $3.ModifyTagResponse>(
          '/tag.Tag/Modify',
          ($3.ModifyTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ModifyTagResponse.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$3.RemoveTagRequest, $3.RemoveTagResponse>(
          '/tag.Tag/Remove',
          ($3.RemoveTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.RemoveTagResponse.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$3.GetTagListRequest, $3.GetTagListResponse>(
          '/tag.Tag/GetList',
          ($3.GetTagListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetTagListResponse.fromBuffer(value));

  TagClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateTagResponse> create($3.CreateTagRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetTagResponse> get($3.GetTagRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$3.ModifyTagResponse> modify($3.ModifyTagRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modify, request, options: options);
  }

  $grpc.ResponseFuture<$3.RemoveTagResponse> remove($3.RemoveTagRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetTagListResponse> getList(
      $3.GetTagListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }
}

abstract class TagServiceBase extends $grpc.Service {
  $core.String get $name => 'tag.Tag';

  TagServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateTagRequest, $3.CreateTagResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateTagRequest.fromBuffer(value),
        ($3.CreateTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetTagRequest, $3.GetTagResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetTagRequest.fromBuffer(value),
        ($3.GetTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ModifyTagRequest, $3.ModifyTagResponse>(
        'Modify',
        modify_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ModifyTagRequest.fromBuffer(value),
        ($3.ModifyTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RemoveTagRequest, $3.RemoveTagResponse>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RemoveTagRequest.fromBuffer(value),
        ($3.RemoveTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetTagListRequest, $3.GetTagListResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetTagListRequest.fromBuffer(value),
        ($3.GetTagListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateTagResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$3.CreateTagRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$3.GetTagResponse> get_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GetTagRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$3.ModifyTagResponse> modify_Pre($grpc.ServiceCall call,
      $async.Future<$3.ModifyTagRequest> request) async {
    return modify(call, await request);
  }

  $async.Future<$3.RemoveTagResponse> remove_Pre($grpc.ServiceCall call,
      $async.Future<$3.RemoveTagRequest> request) async {
    return remove(call, await request);
  }

  $async.Future<$3.GetTagListResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetTagListRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$3.CreateTagResponse> create(
      $grpc.ServiceCall call, $3.CreateTagRequest request);
  $async.Future<$3.GetTagResponse> get(
      $grpc.ServiceCall call, $3.GetTagRequest request);
  $async.Future<$3.ModifyTagResponse> modify(
      $grpc.ServiceCall call, $3.ModifyTagRequest request);
  $async.Future<$3.RemoveTagResponse> remove(
      $grpc.ServiceCall call, $3.RemoveTagRequest request);
  $async.Future<$3.GetTagListResponse> getList(
      $grpc.ServiceCall call, $3.GetTagListRequest request);
}
