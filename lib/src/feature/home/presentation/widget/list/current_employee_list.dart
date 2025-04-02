import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workly/core/model/home/response/add_employee_request_model.dart';
import 'package:workly/design_system/font/brand_font.dart';
import 'package:workly/design_system/widget/_widget.dart';
import 'package:workly/src/feature/home/presentation/widget/tile/employee_tile.dart';
import 'package:workly/src/theme/colors.dart';
import 'package:workly/util/extentions/extensions.dart';
import 'package:workly/util/utils.dart';

class CurrentEmployeeList extends ConsumerStatefulWidget {
  final List<AddEmployeeRequestModel> list;
  final Function(AddEmployeeRequestModel value)? onDelete, onEdit;
  const CurrentEmployeeList({
    super.key,
    this.list = const [],
    this.onDelete,
    this.onEdit,
  });

  @override
  ConsumerState<CurrentEmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends ConsumerState<CurrentEmployeeList> {
  @override
  Widget build(BuildContext context) {
    return widget.list.isNotEmpty
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),

              child: BrandText.primary(
                data: 'Current employees',
                fontSize: BrandFontSize.headline1,
              ),
            ),
            Container(
              color: AppColor.white,
              height: context.deviceSize.height * 0.4,
              child: ListView.builder(
                itemCount: widget.list.length,
                itemBuilder:
                    (context, index) => EmployeeTile(
                      name: widget.list[index].name,
                      role: widget.list[index].role,
                      from: DateFormats.dMmmy.format(
                        widget.list[index].start ?? DateTime.now(),
                      ),
                      onEdit: () {
                        widget.onEdit?.call(widget.list[index]);
                      },
                      onDelete: () {
                        widget.onDelete?.call(widget.list[index]);
                      },
                    ),
              ),
            ),
          ],
        )
        : const SizedBox();
  }
}
