import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workly/core/model/home/response/add_employee_request_model.dart';
part 'home_state_model.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<AddEmployeeRequestModel> employeeList,
    @Default([]) List<AddEmployeeRequestModel> currentEmployeeList,
    @Default([]) List<AddEmployeeRequestModel> previousEmployeeList,
    @Default(false) bool isEmployeeListLoading,
    @Default(false) bool isError,
    @Default(null) AddEmployeeRequestModel? addEmployee,
  }) = _HomeState;
}
