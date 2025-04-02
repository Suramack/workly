// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_employee_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddEmployeeRequestModel _$AddEmployeeRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _AddEmployeeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AddEmployeeRequestModel {
  String? get name => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

  /// Serializes this AddEmployeeRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddEmployeeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddEmployeeRequestModelCopyWith<AddEmployeeRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEmployeeRequestModelCopyWith<$Res> {
  factory $AddEmployeeRequestModelCopyWith(
    AddEmployeeRequestModel value,
    $Res Function(AddEmployeeRequestModel) then,
  ) = _$AddEmployeeRequestModelCopyWithImpl<$Res, AddEmployeeRequestModel>;
  @useResult
  $Res call({String? name, String? role, DateTime? start, DateTime? end});
}

/// @nodoc
class _$AddEmployeeRequestModelCopyWithImpl<
  $Res,
  $Val extends AddEmployeeRequestModel
>
    implements $AddEmployeeRequestModelCopyWith<$Res> {
  _$AddEmployeeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddEmployeeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            role:
                freezed == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as String?,
            start:
                freezed == start
                    ? _value.start
                    : start // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            end:
                freezed == end
                    ? _value.end
                    : end // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddEmployeeRequestModelImplCopyWith<$Res>
    implements $AddEmployeeRequestModelCopyWith<$Res> {
  factory _$$AddEmployeeRequestModelImplCopyWith(
    _$AddEmployeeRequestModelImpl value,
    $Res Function(_$AddEmployeeRequestModelImpl) then,
  ) = __$$AddEmployeeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? role, DateTime? start, DateTime? end});
}

/// @nodoc
class __$$AddEmployeeRequestModelImplCopyWithImpl<$Res>
    extends
        _$AddEmployeeRequestModelCopyWithImpl<
          $Res,
          _$AddEmployeeRequestModelImpl
        >
    implements _$$AddEmployeeRequestModelImplCopyWith<$Res> {
  __$$AddEmployeeRequestModelImplCopyWithImpl(
    _$AddEmployeeRequestModelImpl _value,
    $Res Function(_$AddEmployeeRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddEmployeeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(
      _$AddEmployeeRequestModelImpl(
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        role:
            freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as String?,
        start:
            freezed == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        end:
            freezed == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddEmployeeRequestModelImpl implements _AddEmployeeRequestModel {
  const _$AddEmployeeRequestModelImpl({
    this.name,
    this.role,
    this.start,
    this.end,
  });

  factory _$AddEmployeeRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddEmployeeRequestModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? role;
  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString() {
    return 'AddEmployeeRequestModel(name: $name, role: $role, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmployeeRequestModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, role, start, end);

  /// Create a copy of AddEmployeeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmployeeRequestModelImplCopyWith<_$AddEmployeeRequestModelImpl>
  get copyWith => __$$AddEmployeeRequestModelImplCopyWithImpl<
    _$AddEmployeeRequestModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddEmployeeRequestModelImplToJson(this);
  }
}

abstract class _AddEmployeeRequestModel implements AddEmployeeRequestModel {
  const factory _AddEmployeeRequestModel({
    final String? name,
    final String? role,
    final DateTime? start,
    final DateTime? end,
  }) = _$AddEmployeeRequestModelImpl;

  factory _AddEmployeeRequestModel.fromJson(Map<String, dynamic> json) =
      _$AddEmployeeRequestModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get role;
  @override
  DateTime? get start;
  @override
  DateTime? get end;

  /// Create a copy of AddEmployeeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEmployeeRequestModelImplCopyWith<_$AddEmployeeRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
