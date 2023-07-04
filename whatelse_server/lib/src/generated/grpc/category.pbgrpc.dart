///
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'category.pb.dart' as $8;
import 'common.pb.dart' as $2;
export 'category.pb.dart';

class CategoryServiceClient extends $grpc.Client {
  static final _$putCategory = $grpc.ClientMethod<$8.CategoryInfo, $2.Empty>(
      '/category.CategoryService/PutCategory',
      ($8.CategoryInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchCategory =
      $grpc.ClientMethod<$2.FetchRequest, $8.CategoryList>(
          '/category.CategoryService/FetchCategory',
          ($2.FetchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $8.CategoryList.fromBuffer(value));

  CategoryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putCategory($8.CategoryInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putCategory, request, options: options);
  }

  $grpc.ResponseFuture<$8.CategoryList> fetchCategory($2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchCategory, request, options: options);
  }
}

abstract class CategoryServiceBase extends $grpc.Service {
  $core.String get $name => 'category.CategoryService';

  CategoryServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CategoryInfo, $2.Empty>(
        'PutCategory',
        putCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CategoryInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $8.CategoryList>(
        'FetchCategory',
        fetchCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($8.CategoryList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$8.CategoryInfo> request) async {
    return putCategory(call, await request);
  }

  $async.Future<$8.CategoryList> fetchCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchCategory(call, await request);
  }

  $async.Future<$2.Empty> putCategory(
      $grpc.ServiceCall call, $8.CategoryInfo request);
  $async.Future<$8.CategoryList> fetchCategory(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
