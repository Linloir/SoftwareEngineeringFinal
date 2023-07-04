///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tag.pb.dart' as $9;
import 'common.pb.dart' as $2;
export 'tag.pb.dart';

class TagServiceClient extends $grpc.Client {
  static final _$putTag = $grpc.ClientMethod<$9.TagInfo, $2.Empty>(
      '/tag.TagService/PutTag',
      ($9.TagInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchTag = $grpc.ClientMethod<$2.FetchRequest, $9.TagList>(
      '/tag.TagService/FetchTag',
      ($2.FetchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.TagList.fromBuffer(value));

  TagServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putTag($9.TagInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putTag, request, options: options);
  }

  $grpc.ResponseFuture<$9.TagList> fetchTag($2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchTag, request, options: options);
  }
}

abstract class TagServiceBase extends $grpc.Service {
  $core.String get $name => 'tag.TagService';

  TagServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.TagInfo, $2.Empty>(
        'PutTag',
        putTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.TagInfo.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $9.TagList>(
        'FetchTag',
        fetchTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($9.TagList value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> putTag_Pre(
      $grpc.ServiceCall call, $async.Future<$9.TagInfo> request) async {
    return putTag(call, await request);
  }

  $async.Future<$9.TagList> fetchTag_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchTag(call, await request);
  }

  $async.Future<$2.Empty> putTag($grpc.ServiceCall call, $9.TagInfo request);
  $async.Future<$9.TagList> fetchTag(
      $grpc.ServiceCall call, $2.FetchRequest request);
}
