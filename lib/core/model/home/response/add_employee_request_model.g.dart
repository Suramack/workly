// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_employee_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddEmployeeRequestModelImpl _$$AddEmployeeRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$AddEmployeeRequestModelImpl(
  name: json['name'] as String?,
  role: json['role'] as String?,
  start: json['start'] == null ? null : DateTime.parse(json['start'] as String),
  end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
);

Map<String, dynamic> _$$AddEmployeeRequestModelImplToJson(
  _$AddEmployeeRequestModelImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'role': instance.role,
  'start': instance.start?.toIso8601String(),
  'end': instance.end?.toIso8601String(),
};
