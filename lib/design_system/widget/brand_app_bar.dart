import 'package:flutter/material.dart';
import 'package:workly/design_system/font/brand_font.dart';
import 'package:workly/design_system/widget/brand_text.dart';
import 'package:workly/src/theme/colors.dart';

class BrandAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton, centerTitle;

  const BrandAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BrandText.primary(
        data: title,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: BrandFontSize.headline1,
        ),
      ),
      centerTitle: centerTitle,
      backgroundColor: AppColor.primary,
      elevation: 0,
      leading:
          showBackButton
              ? IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              )
              : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
