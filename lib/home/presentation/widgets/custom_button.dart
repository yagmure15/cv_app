import 'package:cv_maker/utils/constants/assets.gen.dart';
import 'package:cv_maker/utils/paddings.dart';
import 'package:cv_maker/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    required this.onPressed,
    this.trailingIconPath,
    this.leadingIconPath,
    this.color,
    this.width,
    super.key,
  });

  final String? trailingIconPath;
  final String? leadingIconPath;
  final String title;
  final Color? color;
  final double? width;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return width == null ? Expanded(child: content()) : content();
  }

  Widget content() {
    return SizedBox(
      height: 48,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: color,
          backgroundColor: Palette.lightRed,
          surfaceTintColor: Colors.green,
          disabledForegroundColor: Palette.gray,
          disabledBackgroundColor: Palette.lightGray,
          padding: EdgeInsets.zero,
          elevation: 2,
          shadowColor: Palette.lightGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: Paddings.smHorizontal.edgeInsets,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (leadingIconPath != null)
                Container(
                  height: 24,
                  width: 24,
                  padding: Paddings.xxs.edgeInsets,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.gray.withOpacity(0.2),
                  ),
                  child: SvgPicture.asset(
                    Assets.svg.arrowRight,
                    colorFilter: const ColorFilter.mode(Palette.gray, BlendMode.srcIn),
                    semanticsLabel: Assets.svg.arrowRight,
                  ),
                ),
              Expanded(
                child: Align(
                  alignment: trailingIconPath != null
                      ? Alignment.centerLeft
                      : leadingIconPath != null
                          ? Alignment.centerRight
                          : Alignment.center,
                  child: Text(title),
                ),
              ),
              if (trailingIconPath != null)
                Container(
                  height: 24,
                  width: 24,
                  padding: Paddings.xxs.edgeInsets,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.gray.withOpacity(0.2),
                  ),
                  child: SvgPicture.asset(
                    Assets.svg.arrowRight,
                    colorFilter: const ColorFilter.mode(Palette.gray, BlendMode.srcIn),
                    semanticsLabel: Assets.svg.arrowRight,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
