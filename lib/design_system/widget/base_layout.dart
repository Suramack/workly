import 'package:flutter/material.dart';
import 'package:workly/src/theme/colors.dart';

class BaseLayout extends StatelessWidget {
  final Widget? child, floatingActionButton;
  final PreferredSizeWidget? appBar;
  final bool showBackButton;
  final Function? onBackTap;
  final double? childTopPosition;
  final bool showBottomNavbar;
  const BaseLayout({
    super.key,
    this.child,
    this.appBar,
    this.showBackButton = false,
    this.onBackTap,
    this.childTopPosition,
    this.showBottomNavbar = false,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.opaque,
      onPointerDown: (_) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.greyF2,
        appBar: appBar,
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: showBottomNavbar ? SizedBox() : SizedBox(),
        floatingActionButton: floatingActionButton,
        body: child ?? SizedBox(),
      ),
    );
  }
}
