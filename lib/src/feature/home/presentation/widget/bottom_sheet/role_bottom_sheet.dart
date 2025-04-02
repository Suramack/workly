import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workly/design_system/font/brand_font.dart';
import 'package:workly/design_system/label/label.dart';
import 'package:workly/design_system/widget/_widget.dart';
import 'package:workly/src/theme/colors.dart';
import 'package:workly/util/extentions/extensions.dart';

class RoleBottomSheet<T> extends StatelessWidget {
  final Function(T va)? onSelected;
  final List<T> list;
  final String? Function(T v)? displayValue;
  const RoleBottomSheet({
    super.key,
    this.onSelected,
    this.list = const [],
    this.displayValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.deviceSize.height * 0.5,
      width: context.deviceSize.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        color: AppColor.white,
      ),
      child: ListView.separated(
        itemCount: list.length,
        itemBuilder:
            (context, index) => InkWell(
              onTap: () {
                onSelected?.call(list[index]);
                context.pop();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    BrandText.secondary(
                      data: displayValue?.call(list[index]) ?? Strings.na,
                      fontSize: BrandFontSize.headline3,
                    ),
                  ],
                ),
              ),
            ),
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
