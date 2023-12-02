import 'package:cv_maker/home/presentation/widgets/custom_button.dart';
import 'package:cv_maker/home/presentation/widgets/todo_list_dialog_item.dart';
import 'package:cv_maker/translations/strings.g.dart';
import 'package:cv_maker/utils/constants/assets.gen.dart';
import 'package:cv_maker/utils/custom_text_style.dart';
import 'package:cv_maker/utils/paddings.dart';
import 'package:cv_maker/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';

class TodoListDialog extends StatelessWidget {
  const TodoListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: 400,
        padding: Paddings.sm.edgeInsets,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.svg.todo, semanticsLabel: Assets.svg.todo),
                const SizedBox(width: 8),
                Text(
                  context.t.todoListDialogTitle,
                  style: CustomTextStyle.subtitle1.bold,
                ),
              ],
            ),
            Padding(
              padding: Paddings.lgOnlyLeft.edgeInsets,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledText(
                    text: context.t.todoListExplanation,
                    style: CustomTextStyle.bodytext1.style,
                    tags: {
                      'b': StyledTextTag(style: CustomTextStyle.bodytext1.bold),
                    },
                  ),
                  Padding(
                    padding: Paddings.xsVertical.edgeInsets,
                    child: Text(
                      context.t.must,
                      style: CustomTextStyle.subtitle1.bold.changeColor(color: Palette.gray),
                    ),
                  ),
                  const TodoListDialogItem(),
                  const TodoListDialogItem(),
                  const TodoListDialogItem(),
                  Padding(
                    padding: Paddings.xsVertical.edgeInsets,
                    child: Text(
                      context.t.optional,
                      style: CustomTextStyle.subtitle1.bold.changeColor(color: Palette.gray),
                    ),
                  ),
                  const TodoListDialogItem(),
                  const TodoListDialogItem(),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  leadingIconPath: Assets.svg.arrowRight,
                  title: 'Cancel',
                  color: Palette.red,
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                CustomButton(
                  trailingIconPath: Assets.svg.arrowRight,
                  title: 'Confirm',
                  color: Palette.red,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
