import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:workly/design_system/font/brand_font.dart';
import 'package:workly/design_system/label/label.dart';
import 'package:workly/design_system/widget/base_layout.dart';
import 'package:workly/design_system/widget/brand_app_bar.dart';
import 'package:workly/design_system/widget/brand_floating_button.dart';
import 'package:workly/design_system/widget/brand_text.dart';
import 'package:workly/route/route_name.dart';
import 'package:workly/src/feature/home/presentation/provider/home_provider.dart';
import 'package:workly/src/feature/home/presentation/widget/list/current_employee_list.dart';
import 'package:workly/src/feature/home/presentation/widget/list/previous_employee_list.dart';
import 'package:workly/src/theme/colors.dart';
import 'package:workly/util/assets/assets.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late HomeNotifierProvider provider;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchData();
    });
  }

  Future<void> fetchData() async {
    await provider.fetch();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(homeProvider);
    provider = ref.read(homeProvider.notifier);
    return BaseLayout(
      appBar: BrandAppBar(title: Strings.employeeList, showBackButton: false),
      floatingActionButton: BrandFloatingButton(
        onTap: () {
          context.push(RouteName.addEmployee);
        },
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (provider.isEmployeeListLoading) ...[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
            ),
          ] else if (!provider.isEmployeeListLoading &&
              provider.employeeList.isEmpty) ...[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.noDataImg),
                  BrandText.secondary(
                    data: Strings.noEmployeeRecordFind,
                    fontSize: BrandFontSize.headline2,
                  ),
                ],
              ),
            ),
          ] else
            Column(
              children: [
                // Current Employee
                CurrentEmployeeList(
                  list: provider.currentEmployeeList,
                  onDelete: (value) {
                    provider.deleteEmployee(value);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: AppColor.greyCF,
                        content: BrandText.secondary(
                          data: 'Employee Deleted Successfully',
                          fontSize: BrandFontSize.headline3,
                        ),
                      ),
                    );
                  },
                  onEdit: (value) {},
                ),
                // // Previous Employee
                PreviousEmployeeList(
                  list: provider.previousEmployeeList,
                  onDelete: (value) {
                    provider.deleteEmployee(value);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: AppColor.greyCF,
                        content: BrandText.secondary(
                          data: 'Employee Deleted Successfully',
                          fontSize: BrandFontSize.headline3,
                        ),
                      ),
                    );
                  },
                  onEdit: (value) {},
                ),
              ],
            ),
        ],
      ),
    );
  }
}
