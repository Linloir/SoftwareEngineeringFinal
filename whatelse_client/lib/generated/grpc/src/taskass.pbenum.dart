///
//  Generated code. Do not modify.
//  source: taskass.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TaskAssignmentStatus extends $pb.ProtobufEnum {
  static const TaskAssignmentStatus ACCEPTED = TaskAssignmentStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCEPTED');
  static const TaskAssignmentStatus REJECTED = TaskAssignmentStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REJECTED');

  static const $core.List<TaskAssignmentStatus> values = <TaskAssignmentStatus> [
    ACCEPTED,
    REJECTED,
  ];

  static final $core.Map<$core.int, TaskAssignmentStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskAssignmentStatus? valueOf($core.int value) => _byValue[value];

  const TaskAssignmentStatus._($core.int v, $core.String n) : super(v, n);
}

class TaskPriority extends $pb.ProtobufEnum {
  static const TaskPriority NONE = TaskPriority._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const TaskPriority LOW = TaskPriority._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOW');
  static const TaskPriority MEDIUM = TaskPriority._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MEDIUM');
  static const TaskPriority HIGH = TaskPriority._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HIGH');
  static const TaskPriority URGENT = TaskPriority._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'URGENT');

  static const $core.List<TaskPriority> values = <TaskPriority> [
    NONE,
    LOW,
    MEDIUM,
    HIGH,
    URGENT,
  ];

  static final $core.Map<$core.int, TaskPriority> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskPriority? valueOf($core.int value) => _byValue[value];

  const TaskPriority._($core.int v, $core.String n) : super(v, n);
}

