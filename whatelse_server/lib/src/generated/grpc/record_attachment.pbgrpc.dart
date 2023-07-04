///
//  Generated code. Do not modify.
//  source: record_attachment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'record_attachment.pb.dart' as $13;
import 'common.pb.dart' as $2;
export 'record_attachment.pb.dart';

class RecordAttachmentServiceClient extends $grpc.Client {
  static final _$putRecordAttachment =
      $grpc.ClientMethod<$13.RecordAttachmentStream, $2.Empty>(
          '/record_attachment.RecordAttachmentService/PutRecordAttachment',
          ($13.RecordAttachmentStream value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$fetchRecordAttachmentMeta = $grpc.ClientMethod<$2.FetchRequest,
          $13.RecordAttachmentList>(
      '/record_attachment.RecordAttachmentService/FetchRecordAttachmentMeta',
      ($2.FetchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $13.RecordAttachmentList.fromBuffer(value));
  static final _$fetchRecordAttachmentBytes = $grpc.ClientMethod<
          $13.RecordAttachmentIdentifier, $13.RecordAttachmentBytes>(
      '/record_attachment.RecordAttachmentService/FetchRecordAttachmentBytes',
      ($13.RecordAttachmentIdentifier value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $13.RecordAttachmentBytes.fromBuffer(value));

  RecordAttachmentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> putRecordAttachment(
      $async.Stream<$13.RecordAttachmentStream> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$putRecordAttachment, request,
            options: options)
        .single;
  }

  $grpc.ResponseFuture<$13.RecordAttachmentList> fetchRecordAttachmentMeta(
      $2.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchRecordAttachmentMeta, request,
        options: options);
  }

  $grpc.ResponseStream<$13.RecordAttachmentBytes> fetchRecordAttachmentBytes(
      $13.RecordAttachmentIdentifier request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$fetchRecordAttachmentBytes, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class RecordAttachmentServiceBase extends $grpc.Service {
  $core.String get $name => 'record_attachment.RecordAttachmentService';

  RecordAttachmentServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.RecordAttachmentStream, $2.Empty>(
        'PutRecordAttachment',
        putRecordAttachment,
        true,
        false,
        ($core.List<$core.int> value) =>
            $13.RecordAttachmentStream.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchRequest, $13.RecordAttachmentList>(
        'FetchRecordAttachmentMeta',
        fetchRecordAttachmentMeta_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchRequest.fromBuffer(value),
        ($13.RecordAttachmentList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.RecordAttachmentIdentifier,
            $13.RecordAttachmentBytes>(
        'FetchRecordAttachmentBytes',
        fetchRecordAttachmentBytes_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $13.RecordAttachmentIdentifier.fromBuffer(value),
        ($13.RecordAttachmentBytes value) => value.writeToBuffer()));
  }

  $async.Future<$13.RecordAttachmentList> fetchRecordAttachmentMeta_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchRequest> request) async {
    return fetchRecordAttachmentMeta(call, await request);
  }

  $async.Stream<$13.RecordAttachmentBytes> fetchRecordAttachmentBytes_Pre(
      $grpc.ServiceCall call,
      $async.Future<$13.RecordAttachmentIdentifier> request) async* {
    yield* fetchRecordAttachmentBytes(call, await request);
  }

  $async.Future<$2.Empty> putRecordAttachment($grpc.ServiceCall call,
      $async.Stream<$13.RecordAttachmentStream> request);
  $async.Future<$13.RecordAttachmentList> fetchRecordAttachmentMeta(
      $grpc.ServiceCall call, $2.FetchRequest request);
  $async.Stream<$13.RecordAttachmentBytes> fetchRecordAttachmentBytes(
      $grpc.ServiceCall call, $13.RecordAttachmentIdentifier request);
}
