// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  List<AddEmployeeRequestModel> get employeeList =>
      throw _privateConstructorUsedError;
  List<AddEmployeeRequestModel> get currentEmployeeList =>
      throw _privateConstructorUsedError;
  List<AddEmployeeRequestModel> get previousEmployeeList =>
      throw _privateConstructorUsedError;
  bool get isEmployeeListLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  AddEmployeeRequestModel? get addEmployee =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    List<AddEmployeeRequestModel> employeeList,
    List<AddEmployeeRequestModel> currentEmployeeList,
    List<AddEmployeeRequestModel> previousEmployeeList,
    bool isEmployeeListLoading,
    bool isError,
    AddEmployeeRequestModel? addEmployee,
  });

  $AddEmployeeRequestModelCopyWith<$Res>? get addEmployee;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeList = null,
    Object? currentEmployeeList = null,
    Object? previousEmployeeList = null,
    Object? isEmployeeListLoading = null,
    Object? isError = null,
    Object? addEmployee = freezed,
  }) {
    return _then(
      _value.copyWith(
            employeeList:
                null == employeeList
                    ? _value.employeeList
                    : employeeList // ignore: cast_nullable_to_non_nullable
                        as List<AddEmployeeRequestModel>,
            currentEmployeeList:
                null == currentEmployeeList
                    ? _value.currentEmployeeList
                    : currentEmployeeList // ignore: cast_nullable_to_non_nullable
                        as List<AddEmployeeRequestModel>,
            previousEmployeeList:
                null == previousEmployeeList
                    ? _value.previousEmployeeList
                    : previousEmployeeList // ignore: cast_nullable_to_non_nullable
                        as List<AddEmployeeRequestModel>,
            isEmployeeListLoading:
                null == isEmployeeListLoading
                    ? _value.isEmployeeListLoading
                    : isEmployeeListLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            isError:
                null == isError
                    ? _value.isError
                    : isError // ignore: cast_nullable_to_non_nullable
                        as bool,
            addEmployee:
                freezed == addEmployee
                    ? _value.addEmployee
                    : addEmployee // ignore: cast_nullable_to_non_nullable
                        as AddEmployeeRequestModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddEmployeeRequestModelCopyWith<$Res>? get addEmployee {
    if (_value.addEmployee == null) {
      return null;
    }

    return $AddEmployeeRequestModelCopyWith<$Res>(_value.addEmployee!, (value) {
      return _then(_value.copyWith(addEmployee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<AddEmployeeRequestModel> employeeList,
    List<AddEmployeeRequestModel> currentEmployeeList,
    List<AddEmployeeRequestModel> previousEmployeeList,
    bool isEmployeeListLoading,
    bool isError,
    AddEmployeeRequestModel? addEmployee,
  });

  @override
  $AddEmployeeRequestModelCopyWith<$Res>? get addEmployee;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeList = null,
    Object? currentEmployeeList = null,
    Object? previousEmployeeList = null,
    Object? isEmployeeListLoading = null,
    Object? isError = null,
    Object? addEmployee = freezed,
  }) {
    return _then(
      _$HomeStateImpl(
        employeeList:
            null == employeeList
                ? _value._employeeList
                : employeeList // ignore: cast_nullable_to_non_nullable
                    as List<AddEmployeeRequestModel>,
        currentEmployeeList:
            null == currentEmployeeList
                ? _value._currentEmployeeList
                : currentEmployeeList // ignore: cast_nullable_to_non_nullable
                    as List<AddEmployeeRequestModel>,
        previousEmployeeList:
            null == previousEmployeeList
                ? _value._previousEmployeeList
                : previousEmployeeList // ignore: cast_nullable_to_non_nullable
                    as List<AddEmployeeRequestModel>,
        isEmployeeListLoading:
            null == isEmployeeListLoading
                ? _value.isEmployeeListLoading
                : isEmployeeListLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        isError:
            null == isError
                ? _value.isError
                : isError // ignore: cast_nullable_to_non_nullable
                    as bool,
        addEmployee:
            freezed == addEmployee
                ? _value.addEmployee
                : addEmployee // ignore: cast_nullable_to_non_nullable
                    as AddEmployeeRequestModel?,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    final List<AddEmployeeRequestModel> employeeList = const [],
    final List<AddEmployeeRequestModel> currentEmployeeList = const [],
    final List<AddEmployeeRequestModel> previousEmployeeList = const [],
    this.isEmployeeListLoading = false,
    this.isError = false,
    this.addEmployee = null,
  }) : _employeeList = employeeList,
       _currentEmployeeList = currentEmployeeList,
       _previousEmployeeList = previousEmployeeList;

  final List<AddEmployeeRequestModel> _employeeList;
  @override
  @JsonKey()
  List<AddEmployeeRequestModel> get employeeList {
    if (_employeeList is EqualUnmodifiableListView) return _employeeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employeeList);
  }

  final List<AddEmployeeRequestModel> _currentEmployeeList;
  @override
  @JsonKey()
  List<AddEmployeeRequestModel> get currentEmployeeList {
    if (_currentEmployeeList is EqualUnmodifiableListView)
      return _currentEmployeeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentEmployeeList);
  }

  final List<AddEmployeeRequestModel> _previousEmployeeList;
  @override
  @JsonKey()
  List<AddEmployeeRequestModel> get previousEmployeeList {
    if (_previousEmployeeList is EqualUnmodifiableListView)
      return _previousEmployeeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousEmployeeList);
  }

  @override
  @JsonKey()
  final bool isEmployeeListLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final AddEmployeeRequestModel? addEmployee;

  @override
  String toString() {
    return 'HomeState(employeeList: $employeeList, currentEmployeeList: $currentEmployeeList, previousEmployeeList: $previousEmployeeList, isEmployeeListLoading: $isEmployeeListLoading, isError: $isError, addEmployee: $addEmployee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(
              other._employeeList,
              _employeeList,
            ) &&
            const DeepCollectionEquality().equals(
              other._currentEmployeeList,
              _currentEmployeeList,
            ) &&
            const DeepCollectionEquality().equals(
              other._previousEmployeeList,
              _previousEmployeeList,
            ) &&
            (identical(other.isEmployeeListLoading, isEmployeeListLoading) ||
                other.isEmployeeListLoading == isEmployeeListLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.addEmployee, addEmployee) ||
                other.addEmployee == addEmployee));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_employeeList),
    const DeepCollectionEquality().hash(_currentEmployeeList),
    const DeepCollectionEquality().hash(_previousEmployeeList),
    isEmployeeListLoading,
    isError,
    addEmployee,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final List<AddEmployeeRequestModel> employeeList,
    final List<AddEmployeeRequestModel> currentEmployeeList,
    final List<AddEmployeeRequestModel> previousEmployeeList,
    final bool isEmployeeListLoading,
    final bool isError,
    final AddEmployeeRequestModel? addEmployee,
  }) = _$HomeStateImpl;

  @override
  List<AddEmployeeRequestModel> get employeeList;
  @override
  List<AddEmployeeRequestModel> get currentEmployeeList;
  @override
  List<AddEmployeeRequestModel> get previousEmployeeList;
  @override
  bool get isEmployeeListLoading;
  @override
  bool get isError;
  @override
  AddEmployeeRequestModel? get addEmployee;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
