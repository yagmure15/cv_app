import 'package:cv_maker/home/presentation/widgets/no_resume_widget.dart';
import 'package:cv_maker/home/presentation/widgets/screen_summary_showcase.dart';
import 'package:cv_maker/translations/strings.g.dart';
import 'package:cv_maker/utils/constants/assets.gen.dart';
import 'package:cv_maker/utils/custom_text_style.dart';
import 'package:cv_maker/utils/paddings.dart';
import 'package:cv_maker/utils/palette.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.contain,
                  Assets.images.mainScreenImage.path,
                ),
                const Positioned(
                  bottom: -40,
                  child: ScreenSummaryShowcaseWidget(),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 32),
        Padding(
          padding: Paddings.sm.edgeInsets,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.t.myResumes,
                style: CustomTextStyle.subtitle1.bold.changeColor(color: Palette.gray),
              ),
              const NoResumeWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
