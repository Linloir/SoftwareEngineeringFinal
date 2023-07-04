///
//  Generated code. Do not modify.
//  source: session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'session.pb.dart' as $4;
export 'session.pb.dart';

class SessionClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$4.CreateSessionRequest, $4.CreateSessionResponse>(
          '/session.Session/Create',
          ($4.CreateSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateSessionResponse.fromBuffer(value));
  static final _$modify =
      $grpc.ClientMethod<$4.ModifySessionRequest, $4.ModifySessionResponse>(
          '/session.Session/Modify',
          ($4.ModifySessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ModifySessionResponse.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$4.GetSessionRequest, $4.GetSessionResponse>(
          '/session.Session/Get',
          ($4.GetSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetSessionResponse.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$4.GetSessionListRequest, $4.GetSessionListResponse>(
          '/session.Session/GetList',
          ($4.GetSessionListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetSessionListResponse.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$4.RemoveSessionRequest, $4.RemoveSessionResponse>(
          '/session.Session/Remove',
          ($4.RemoveSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RemoveSessionResponse.fromBuffer(value));
  static final _$uploadAttachment = $grpc.ClientMethod<
          $4.UploadAttachmentRequest, $4.UploadAttachmentResponse>(
      '/session.Session/UploadAttachment',
      ($4.UploadAttachmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.UploadAttachmentResponse.fromBuffer(value));
  static final _$getAttachment =
      $grpc.ClientMethod<$4.GetAttachmentRequest, $4.GetAttachmentResponse>(
          '/session.Session/GetAttachment',
          ($4.GetAttachmentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetAttachmentResponse.fromBuffer(value));
  static final _$removeAttachment = $grpc.ClientMethod<
          $4.RemoveAttachmentRequest, $4.RemoveAttachmentResponse>(
      '/session.Session/RemoveAttachment',
      ($4.RemoveAttachmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.RemoveAttachmentResponse.fromBuffer(value));
  static final _$createRecord =
      $grpc.ClientMethod<$4.CreateRecordRequest, $4.CreateRecordResponse>(
          '/session.Session/CreateRecord',
          ($4.CreateRecordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateRecordResponse.fromBuffer(value));
  static final _$getRecord =
      $grpc.ClientMethod<$4.GetRecordRequest, $4.GetRecordResponse>(
          '/session.Session/GetRecord',
          ($4.GetRecordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetRecordResponse.fromBuffer(value));
  static final _$modifyRecord =
      $grpc.ClientMethod<$4.ModifyRecordRequest, $4.ModifyRecordResponse>(
          '/session.Session/ModifyRecord',
          ($4.ModifyRecordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ModifyRecordResponse.fromBuffer(value));
  static final _$getRecordList =
      $grpc.ClientMethod<$4.GetRecordListRequest, $4.GetRecordListResponse>(
          '/session.Session/GetRecordList',
          ($4.GetRecordListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetRecordListResponse.fromBuffer(value));
  static final _$getTaskRecordList = $grpc.ClientMethod<
          $4.GetTaskRecordListRequest, $4.GetTaskRecordListResponse>(
      '/session.Session/GetTaskRecordList',
      ($4.GetTaskRecordListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GetTaskRecordListResponse.fromBuffer(value));
  static final _$removeRecord =
      $grpc.ClientMethod<$4.RemoveRecordRequest, $4.RemoveRecordResponse>(
          '/session.Session/RemoveRecord',
          ($4.RemoveRecordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RemoveRecordResponse.fromBuffer(value));

  SessionClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateSessionResponse> create(
      $4.CreateSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$4.ModifySessionResponse> modify(
      $4.ModifySessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modify, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSessionResponse> get($4.GetSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSessionListResponse> getList(
      $4.GetSessionListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$4.RemoveSessionResponse> remove(
      $4.RemoveSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$4.UploadAttachmentResponse> uploadAttachment(
      $async.Stream<$4.UploadAttachmentRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadAttachment, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$4.GetAttachmentResponse> getAttachment(
      $4.GetAttachmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAttachment, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$4.RemoveAttachmentResponse> removeAttachment(
      $4.RemoveAttachmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeAttachment, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateRecordResponse> createRecord(
      $4.CreateRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRecord, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRecordResponse> getRecord(
      $4.GetRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecord, request, options: options);
  }

  $grpc.ResponseFuture<$4.ModifyRecordResponse> modifyRecord(
      $4.ModifyRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modifyRecord, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRecordListResponse> getRecordList(
      $4.GetRecordListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecordList, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetTaskRecordListResponse> getTaskRecordList(
      $4.GetTaskRecordListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTaskRecordList, request, options: options);
  }

  $grpc.ResponseFuture<$4.RemoveRecordResponse> removeRecord(
      $4.RemoveRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeRecord, request, options: options);
  }
}

abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'session.Session';

  SessionServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.CreateSessionRequest, $4.CreateSessionResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CreateSessionRequest.fromBuffer(value),
            ($4.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.ModifySessionRequest, $4.ModifySessionResponse>(
            'Modify',
            modify_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ModifySessionRequest.fromBuffer(value),
            ($4.ModifySessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSessionRequest, $4.GetSessionResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetSessionRequest.fromBuffer(value),
        ($4.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSessionListRequest,
            $4.GetSessionListResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetSessionListRequest.fromBuffer(value),
        ($4.GetSessionListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.RemoveSessionRequest, $4.RemoveSessionResponse>(
            'Remove',
            remove_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.RemoveSessionRequest.fromBuffer(value),
            ($4.RemoveSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UploadAttachmentRequest,
            $4.UploadAttachmentResponse>(
        'UploadAttachment',
        uploadAttachment,
        true,
        false,
        ($core.List<$core.int> value) =>
            $4.UploadAttachmentRequest.fromBuffer(value),
        ($4.UploadAttachmentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GetAttachmentRequest, $4.GetAttachmentResponse>(
            'GetAttachment',
            getAttachment_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $4.GetAttachmentRequest.fromBuffer(value),
            ($4.GetAttachmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RemoveAttachmentRequest,
            $4.RemoveAttachmentResponse>(
        'RemoveAttachment',
        removeAttachment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RemoveAttachmentRequest.fromBuffer(value),
        ($4.RemoveAttachmentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.CreateRecordRequest, $4.CreateRecordResponse>(
            'CreateRecord',
            createRecord_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CreateRecordRequest.fromBuffer(value),
            ($4.CreateRecordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetRecordRequest, $4.GetRecordResponse>(
        'GetRecord',
        getRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRecordRequest.fromBuffer(value),
        ($4.GetRecordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.ModifyRecordRequest, $4.ModifyRecordResponse>(
            'ModifyRecord',
            modifyRecord_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ModifyRecordRequest.fromBuffer(value),
            ($4.ModifyRecordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GetRecordListRequest, $4.GetRecordListResponse>(
            'GetRecordList',
            getRecordList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GetRecordListRequest.fromBuffer(value),
            ($4.GetRecordListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetTaskRecordListRequest,
            $4.GetTaskRecordListResponse>(
        'GetTaskRecordList',
        getTaskRecordList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetTaskRecordListRequest.fromBuffer(value),
        ($4.GetTaskRecordListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.RemoveRecordRequest, $4.RemoveRecordResponse>(
            'RemoveRecord',
            removeRecord_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.RemoveRecordRequest.fromBuffer(value),
            ($4.RemoveRecordResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateSessionResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateSessionRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$4.ModifySessionResponse> modify_Pre($grpc.ServiceCall call,
      $async.Future<$4.ModifySessionRequest> request) async {
    return modify(call, await request);
  }

  $async.Future<$4.GetSessionResponse> get_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetSessionRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$4.GetSessionListResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetSessionListRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$4.RemoveSessionResponse> remove_Pre($grpc.ServiceCall call,
      $async.Future<$4.RemoveSessionRequest> request) async {
    return remove(call, await request);
  }

  $async.Stream<$4.GetAttachmentResponse> getAttachment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetAttachmentRequest> request) async* {
    yield* getAttachment(call, await request);
  }

  $async.Future<$4.RemoveAttachmentResponse> removeAttachment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RemoveAttachmentRequest> request) async {
    return removeAttachment(call, await request);
  }

  $async.Future<$4.CreateRecordResponse> createRecord_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateRecordRequest> request) async {
    return createRecord(call, await request);
  }

  $async.Future<$4.GetRecordResponse> getRecord_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetRecordRequest> request) async {
    return getRecord(call, await request);
  }

  $async.Future<$4.ModifyRecordResponse> modifyRecord_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ModifyRecordRequest> request) async {
    return modifyRecord(call, await request);
  }

  $async.Future<$4.GetRecordListResponse> getRecordList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetRecordListRequest> request) async {
    return getRecordList(call, await request);
  }

  $async.Future<$4.GetTaskRecordListResponse> getTaskRecordList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetTaskRecordListRequest> request) async {
    return getTaskRecordList(call, await request);
  }

  $async.Future<$4.RemoveRecordResponse> removeRecord_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RemoveRecordRequest> request) async {
    return removeRecord(call, await request);
  }

  $async.Future<$4.CreateSessionResponse> create(
      $grpc.ServiceCall call, $4.CreateSessionRequest request);
  $async.Future<$4.ModifySessionResponse> modify(
      $grpc.ServiceCall call, $4.ModifySessionRequest request);
  $async.Future<$4.GetSessionResponse> get(
      $grpc.ServiceCall call, $4.GetSessionRequest request);
  $async.Future<$4.GetSessionListResponse> getList(
      $grpc.ServiceCall call, $4.GetSessionListRequest request);
  $async.Future<$4.RemoveSessionResponse> remove(
      $grpc.ServiceCall call, $4.RemoveSessionRequest request);
  $async.Future<$4.UploadAttachmentResponse> uploadAttachment(
      $grpc.ServiceCall call,
      $async.Stream<$4.UploadAttachmentRequest> request);
  $async.Stream<$4.GetAttachmentResponse> getAttachment(
      $grpc.ServiceCall call, $4.GetAttachmentRequest request);
  $async.Future<$4.RemoveAttachmentResponse> removeAttachment(
      $grpc.ServiceCall call, $4.RemoveAttachmentRequest request);
  $async.Future<$4.CreateRecordResponse> createRecord(
      $grpc.ServiceCall call, $4.CreateRecordRequest request);
  $async.Future<$4.GetRecordResponse> getRecord(
      $grpc.ServiceCall call, $4.GetRecordRequest request);
  $async.Future<$4.ModifyRecordResponse> modifyRecord(
      $grpc.ServiceCall call, $4.ModifyRecordRequest request);
  $async.Future<$4.GetRecordListResponse> getRecordList(
      $grpc.ServiceCall call, $4.GetRecordListRequest request);
  $async.Future<$4.GetTaskRecordListResponse> getTaskRecordList(
      $grpc.ServiceCall call, $4.GetTaskRecordListRequest request);
  $async.Future<$4.RemoveRecordResponse> removeRecord(
      $grpc.ServiceCall call, $4.RemoveRecordRequest request);
}
