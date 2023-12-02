import 'package:cv_maker/translations/strings.g.dart';
import 'package:cv_maker/utils/constants/assets.gen.dart';
import 'package:cv_maker/utils/custom_text_style.dart';
import 'package:cv_maker/utils/palette.dart';
import 'package:flutter/material.dart';

class NoResumeWidget extends StatelessWidget {
  const NoResumeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            scale: 4,
            color: const Color.fromRGBO(255, 255, 255, 0.7),
            colorBlendMode: BlendMode.modulate,
            Assets.images.noResume.path,
          ),
        ),
        Text(
          context.t.cannotFoundAnyResume,
          style: CustomTextStyle.headline2.bold,
        ),
        Text(
          context.t.tapToAddExplanation,
          textAlign: TextAlign.center,
          style: CustomTextStyle.bodytext1.bold.changeColor(color: Palette.gray),
        ),
      ],
    );
  }
}
