import 'package:cv_maker/translations/strings.g.dart';
import 'package:cv_maker/utils/constants/assets.gen.dart';
import 'package:cv_maker/utils/custom_text_style.dart';
import 'package:cv_maker/utils/paddings.dart';
import 'package:cv_maker/utils/palette.dart';
import 'package:flutter/material.dart';

class ScreenSummaryShowcaseWidget extends StatelessWidget {
  const ScreenSummaryShowcaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: Paddings.smOnlyLeft.edgeInsets,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 80,
            padding: Paddings.sm.edgeInsets.setLeft(112),
            width: MediaQuery.sizeOf(context).width,
            color: Palette.blue.withOpacity(0.9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.t.nameSurname, style: CustomTextStyle.headline1.style),
                Text(context.t.jobTitle(jobTitle: 'Mabile Developer'), style: CustomTextStyle.subtitle2.style),
              ],
            ),
          ),
          Positioned(
            top: -16,
            left: 16,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
                color: Colors.white,
              ),
              child: Image.asset(Assets.images.manPerson.path),
            ),
          ),
        ],
      ),
    );
  }
}
