import 'package:flutter/material.dart';
import 'package:workly/src/theme/colors.dart';

class BrandFloatingButton extends StatelessWidget {
  final Function? onTap;
  const BrandFloatingButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Icon(Icons.add, color: AppColor.white)),
      ),
    );
  }
}
