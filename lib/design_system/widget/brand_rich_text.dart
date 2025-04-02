import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:workly/design_system/style/text_style.dart';
import 'package:workly/src/theme/colors.dart';

class BrandRichText extends StatelessWidget {
  final String titleValue;
  final String actionValue;
  final Function onTap;
  const BrandRichText({
    super.key,
    required this.titleValue,
    required this.actionValue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: titleValue,
            style: BrandTextStyle.brandTextStyle2.copyWith(),
          ),
          TextSpan(
            text: ' $actionValue',
            style: BrandTextStyle.brandTextStyle2.copyWith(
              color: AppColor.primary,
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                onTap();
              },
          ),
        ],
      ),
    );
  }
}
