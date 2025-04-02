import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workly/core/model/home/response/add_employee_request_model.dart';
import 'package:workly/core/model/home/state/home_state_model.dart';
import 'package:workly/util/storage/local_storage.dart';
import 'package:workly/util/storage/local_storage_key.dart';
import 'package:workly/util/utils.dart';

final homeProvider = StateNotifierProvider<HomeNotifierProvider, HomeState>(
  (ref) => HomeNotifierProvider(ref),
);

class HomeNotifierProvider extends StateNotifier<HomeState> {
  HomeNotifierProvider(this.ref) : super(const HomeState());

  final Ref ref;

  List<AddEmployeeRequestModel> get employeeList => state.employeeList;

  List<AddEmployeeRequestModel> get currentEmployeeList =>
      state.currentEmployeeList;

  List<AddEmployeeRequestModel> get previousEmployeeList =>
      state.previousEmployeeList;

  bool get isEmployeeListLoading => state.isEmployeeListLoading;

  bool get isError => state.isError;

  List<String> get roles => [
    'Product Designer',
    'Flutter Developer',
    'QA Tester',
    'Product Owner',
    'Team Lead',
  ];

  Future<void> fetch() async {
    state = state.copyWith(isEmployeeListLoading: true);

    var employeeString = await LocalStorage.get(
      key: LocalStorageKey.employeeList,
    );

    if (employeeString != null && employeeString.isNotEmpty) {
      var jsonResponse = json.decode(employeeString.toString());

      var list = addEmployeeRequestModelFromJson(jsonResponse ?? []);

      state = state.copyWith(employeeList: list, isEmployeeListLoading: false);

      employeeFilter();
    } else {
      state = state.copyWith(isEmployeeListLoading: false);
    }
  }

  String formatDate(DateTime date) {
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    DateTime yesterday = today.subtract(Duration(days: 1));

    if (date.isAtSameMomentAs(today)) {
      return "Today";
    } else if (date.isAtSameMomentAs(yesterday)) {
      return "Yesterday";
    } else {
      return DateFormats.dMmmy.format(date);
    }
  }

  void employeeFilter() {
    var list = [...state.employeeList];
    List<AddEmployeeRequestModel> tempCurrentList = [];
    List<AddEmployeeRequestModel> tempPreviousList = [];
    for (var i in list) {
      if (i.end == null) {
        tempCurrentList.add(i);
      } else if (DateTime.now().compareTo(i.end!) == 1) {
        tempPreviousList.add(i);
      }
    }
    state = state.copyWith(
      currentEmployeeList: tempCurrentList,
      previousEmployeeList: tempPreviousList,
    );
  }

  void deleteEmployee(AddEmployeeRequestModel employee) {
    var list = [...employeeList];
    list.remove(employee);
    state = state.copyWith(employeeList: list);
    if (list.isEmpty) {
      LocalStorage.set(key: LocalStorageKey.employeeList, value: '[]');
    } else {
      LocalStorage.set(
        key: LocalStorageKey.employeeList,
        value: json.encode(list),
      );
    }

    employeeFilter();
  }

  set addEmployee(AddEmployeeRequestModel employee) {
    var list = [...state.employeeList];
    list.add(employee);
    state = state.copyWith(employeeList: list);
    LocalStorage.set(
      key: LocalStorageKey.employeeList,
      value: json.encode(list),
    );
    employeeFilter();
  }
}
