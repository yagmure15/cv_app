import 'package:cv_maker/utils/custom_text_style.dart';
import 'package:cv_maker/utils/paddings.dart';
import 'package:cv_maker/utils/palette.dart';
import 'package:flutter/material.dart';

class TodoListDialogItem extends StatelessWidget {
  const TodoListDialogItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      margin: Paddings.lgOnlyRight.edgeInsets.setBottom(4),
      decoration: BoxDecoration(
        color: Palette.lightGray,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            margin: Paddings.xsHorizontal.edgeInsets,
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Palette.gray, width: 3),
            ),
          ),
          Text(
            "Personal Information",
            style: CustomTextStyle.subtitle1.bold.changeColor(color: Palette.gray),
          ),
        ],
      ),
    );
  }
}
