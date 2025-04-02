import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_employee_request_model.freezed.dart';
part 'add_employee_request_model.g.dart';

@freezed
class AddEmployeeRequestModel with _$AddEmployeeRequestModel {
  const factory AddEmployeeRequestModel({
    String? name,
    String? role,
    DateTime? start,
    DateTime? end,
  }) = _AddEmployeeRequestModel;

  factory AddEmployeeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddEmployeeRequestModelFromJson(json);
}

List<AddEmployeeRequestModel> addEmployeeRequestModelFromJson(List<dynamic> jsonList) {
  return jsonList
      .map(
        (json) =>
            AddEmployeeRequestModel.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
