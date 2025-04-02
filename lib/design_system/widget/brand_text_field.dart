import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workly/design_system/font/brand_font.dart';
import 'package:workly/design_system/widget/brand_sized_box.dart';
import 'package:workly/design_system/widget/brand_text.dart';
import 'package:workly/src/theme/colors.dart';

class BrandTextField extends StatelessWidget {
  final String? hintText, errorString, initialValue;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final bool filled, enabled;
  final TextInputAction? textInputAction;
  final String? label;
  final Widget? prefixIcon, suffixIcon;
  final TextStyle hintStyle, textStyle;
  final FocusNode? focusNode;
  final Color? fillColor, iconColor;
  final Function? onTap;
  final InputDecoration? decoration;
  final int? maxLines;
  const BrandTextField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.errorString,
    this.validator,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.filled = false,
    this.enabled = true,
    this.inputFormatters = const [],
    this.textInputAction,
    this.initialValue,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
    this.fillColor = AppColor.black,
    this.iconColor,
    this.onTap,
    this.decoration,
    this.maxLines = 1,
    this.hintStyle = const TextStyle(
      color: AppColor.grey8D,
      fontSize: BrandFontSize.headline3,
    ),
    this.textStyle = const TextStyle(
      color: AppColor.black22,
      fontSize: BrandFontSize.headline3,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          BrandText.secondary(data: label ?? ""),
          BrandVSpace(height: 8),
        ],
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          initialValue: initialValue,
          enabled: enabled,
          focusNode: focusNode,
          maxLines: maxLines,
          decoration:
              decoration ??
              InputDecoration(
                filled: filled,
                fillColor: fillColor,
                hintText: hintText,
                hintStyle: hintStyle,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                iconColor: iconColor,
              ),
          style: textStyle,
          textInputAction: textInputAction,
          validator:
              validator ??
              (value) {
                if (value == null || value.isEmpty) {
                  return errorString ?? 'Required field';
                }
                return null;
              },
          onChanged: (value) {
            onChanged?.call(value);
          },
          onTap: () {
            onTap?.call();
          },
        ),
      ],
    );
  }
}
