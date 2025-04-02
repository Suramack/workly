import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:workly/core/model/home/response/add_employee_request_model.dart';
import 'package:workly/design_system/font/brand_font.dart';
import 'package:workly/design_system/label/label.dart';
import 'package:workly/design_system/widget/_widget.dart';
import 'package:workly/design_system/widget/brand_app_bar.dart';
import 'package:workly/src/feature/home/presentation/provider/home_provider.dart';
import 'package:workly/src/feature/home/presentation/widget/bottom_sheet/role_bottom_sheet.dart';
import 'package:workly/src/theme/colors.dart';

class AddEmployeeScreen extends ConsumerStatefulWidget {
  final dynamic routeArgs;
  const AddEmployeeScreen({super.key, this.routeArgs});

  @override
  ConsumerState<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends ConsumerState<AddEmployeeScreen> {
  late HomeNotifierProvider provider;

  TextEditingController nameController = TextEditingController();

  TextEditingController fromDateController = TextEditingController();

  TextEditingController toDateController = TextEditingController();

  TextEditingController roleController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  AddEmployeeRequestModel addEmployee = AddEmployeeRequestModel();

  DateTime? startDate, endDate;

  Future<void> showRoleBottomSheet() async {
    showModalBottomSheet(
      context: context,

      builder:
          (context) => RoleBottomSheet<String>(
            displayValue: (v) => v,
            list: provider.roles,
            onSelected: (va) {
              roleController.text = va;
            },
          ),
    );
  }

  void onSave() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (isValid) {
      addEmployee = addEmployee.copyWith(
        name: nameController.text,
        role: roleController.text,
        start: startDate,
        end: endDate,
      );

      provider.addEmployee = addEmployee;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppColor.greyCF,
          content: BrandText.secondary(
            data: 'Employee Added Successfully',
            fontSize: BrandFontSize.headline3,
          ),
        ),
      );
      if (mounted) {
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(homeProvider);
    provider = ref.read(homeProvider.notifier);
    return BaseLayout(
      appBar: BrandAppBar(title: Strings.addEmployeee),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  BrandVSpace(height: 16),
                  BrandTextField(
                    hintText: Strings.employeeName,
                    controller: nameController,
                    prefixIcon: Icon(
                      Icons.person_outline_sharp,
                      color: AppColor.primary,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter employee name';
                      }
                      return null;
                    },
                  ),
                  BrandVSpace(height: 16),

                  InkWell(
                    onTap: () {
                      showRoleBottomSheet();
                    },
                    child: BrandTextField(
                      hintText: Strings.selectRole,
                      controller: roleController,
                      enabled: false,

                      prefixIcon: Icon(
                        Icons.work_outline_outlined,
                        color: AppColor.primary,
                      ),
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.primary,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select role';
                        }
                        return null;
                      },
                    ),
                  ),
                  BrandVSpace(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () async {
                            startDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            );
                            if (startDate != null) {
                              fromDateController.text = provider.formatDate(
                                startDate!,
                              );
                            }
                          },
                          child: BrandTextField(
                            hintText: 'No Date',
                            controller: fromDateController,
                            prefixIcon: Icon(
                              Icons.event,
                              color: AppColor.primary,
                            ),
                            enabled: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please select start';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      BrandHSpace(width: 16),
                      Icon(Icons.arrow_forward, color: AppColor.primary),
                      BrandHSpace(width: 16),
                      Expanded(
                        child: InkWell(
                          onTap: () async {
                            endDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            );
                            if (endDate != null) {
                              toDateController.text = provider.formatDate(
                                endDate!,
                              );
                            }
                          },
                          child: BrandTextField(
                            hintText: 'No Date',
                            controller: toDateController,
                            prefixIcon: Icon(
                              Icons.event,
                              color: AppColor.primary,
                            ),
                            enabled: false,
                            validator: (value) {
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Divider(color: AppColor.greyE0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 100,
                  height: 45,
                  child: BrandButton.primary(
                    onTap: () {
                      context.pop();
                    },
                    title: 'Cancel',
                    bgColor: AppColor.primary.withAlpha(50),
                    fontColor: AppColor.primary,
                  ),
                ),
                BrandHSpace(width: 16),
                SizedBox(
                  width: 100,
                  height: 45,
                  child: BrandButton.primary(
                    title: 'Save',
                    onTap: () {
                      onSave();
                    },
                  ),
                ),
              ],
            ),
            BrandVSpace(height: 16),
          ],
        ),
      ),
    );
  }
}
