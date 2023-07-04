///
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'category.pb.dart' as $1;
export 'category.pb.dart';

class CategoryClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.CreateCategoryRequest, $1.CreateCategoryResponse>(
          '/category.Category/Create',
          ($1.CreateCategoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateCategoryResponse.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$1.GetCategoryRequest, $1.GetCategoryResponse>(
          '/category.Category/Get',
          ($1.GetCategoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetCategoryResponse.fromBuffer(value));
  static final _$modify =
      $grpc.ClientMethod<$1.ModifyCategoryRequest, $1.ModifyCategoryResponse>(
          '/category.Category/Modify',
          ($1.ModifyCategoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ModifyCategoryResponse.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$1.RemoveCategoryRequest, $1.RemoveCategoryResponse>(
          '/category.Category/Remove',
          ($1.RemoveCategoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RemoveCategoryResponse.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$1.GetCategoryListRequest, $1.GetCategoryListResponse>(
          '/category.Category/GetList',
          ($1.GetCategoryListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetCategoryListResponse.fromBuffer(value));

  CategoryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateCategoryResponse> create(
      $1.CreateCategoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCategoryResponse> get(
      $1.GetCategoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$1.ModifyCategoryResponse> modify(
      $1.ModifyCategoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modify, request, options: options);
  }

  $grpc.ResponseFuture<$1.RemoveCategoryResponse> remove(
      $1.RemoveCategoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCategoryListResponse> getList(
      $1.GetCategoryListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }
}

abstract class CategoryServiceBase extends $grpc.Service {
  $core.String get $name => 'category.Category';

  CategoryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateCategoryRequest,
            $1.CreateCategoryResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateCategoryRequest.fromBuffer(value),
        ($1.CreateCategoryResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetCategoryRequest, $1.GetCategoryResponse>(
            'Get',
            get_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetCategoryRequest.fromBuffer(value),
            ($1.GetCategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ModifyCategoryRequest,
            $1.ModifyCategoryResponse>(
        'Modify',
        modify_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ModifyCategoryRequest.fromBuffer(value),
        ($1.ModifyCategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RemoveCategoryRequest,
            $1.RemoveCategoryResponse>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RemoveCategoryRequest.fromBuffer(value),
        ($1.RemoveCategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCategoryListRequest,
            $1.GetCategoryListResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetCategoryListRequest.fromBuffer(value),
        ($1.GetCategoryListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateCategoryResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateCategoryRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.GetCategoryResponse> get_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetCategoryRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$1.ModifyCategoryResponse> modify_Pre($grpc.ServiceCall call,
      $async.Future<$1.ModifyCategoryRequest> request) async {
    return modify(call, await request);
  }

  $async.Future<$1.RemoveCategoryResponse> remove_Pre($grpc.ServiceCall call,
      $async.Future<$1.RemoveCategoryRequest> request) async {
    return remove(call, await request);
  }

  $async.Future<$1.GetCategoryListResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetCategoryListRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$1.CreateCategoryResponse> create(
      $grpc.ServiceCall call, $1.CreateCategoryRequest request);
  $async.Future<$1.GetCategoryResponse> get(
      $grpc.ServiceCall call, $1.GetCategoryRequest request);
  $async.Future<$1.ModifyCategoryResponse> modify(
      $grpc.ServiceCall call, $1.ModifyCategoryRequest request);
  $async.Future<$1.RemoveCategoryResponse> remove(
      $grpc.ServiceCall call, $1.RemoveCategoryRequest request);
  $async.Future<$1.GetCategoryListResponse> getList(
      $grpc.ServiceCall call, $1.GetCategoryListRequest request);
}
