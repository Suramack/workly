import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:workly/design_system/font/brand_font.dart';
import 'package:workly/design_system/label/label.dart';
import 'package:workly/design_system/widget/brand_text.dart';

class EmployeeTile extends StatelessWidget {
  final String? name, role, from, to;
  final Function? onDelete, onEdit;
  const EmployeeTile({
    super.key,
    this.name,
    this.role,
    this.from,
    this.to,
    this.onDelete,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (value) {
              onDelete?.call();
            },
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: Strings.delete,
          ),
          SlidableAction(
            onPressed: (value) {
              onEdit?.call();
            },
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.share,
            label: Strings.edit,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandText.secondary(
                    data: name ?? Strings.na,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: BrandFontSize.body,
                    ),
                  ),
                  BrandText.grey(
                    data: role ?? Strings.na,
                    textStyle: TextStyle(fontSize: BrandFontSize.body),
                  ),
                  if (to != null && from != null) ...[
                    BrandText.grey(
                      data: '$from - $to',
                      textStyle: TextStyle(fontSize: BrandFontSize.body),
                    ),
                  ] else if (from != null && to == null) ...[
                    BrandText.grey(
                      data: 'From $from',
                      textStyle: TextStyle(fontSize: BrandFontSize.body),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
