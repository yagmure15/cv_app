import 'package:cv_maker/utils/palette.dart';
import 'package:flutter/material.dart';

enum CustomTextStyle {
  headline1(
    TextStyle(
      fontSize: 24,
      height: 1.2,
      debugLabel: 'Headline 1',
      fontFamily: 'Inter',
      color: Palette.darkGray,
    ),
  ),
  headline2(
    TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 1.2,
      debugLabel: 'Headline 2',
      fontFamily: 'Inter',
      color: Palette.darkGray,
    ),
  ),
  subtitle1(
    TextStyle(
      fontSize: 15,
      height: 1.2,
      debugLabel: 'Subtitle 1',
      fontFamily: 'Inter',
    ),
  ),
  subtitle2(
    TextStyle(
      fontSize: 14,
      height: 1.2,
      debugLabel: 'Subtitle 2',
      fontFamily: 'Inter',
      color: Palette.darkGray,
    ),
  ),
  bodytext1(
    TextStyle(
      fontSize: 13,
      height: 1.2,
      debugLabel: 'Bodytext 1',
      fontFamily: 'Inter',
      color: Palette.darkGray,
    ),
  ),
  bodytext2(
    TextStyle(
      fontSize: 11,
      height: 1.2,
      debugLabel: 'Bodytext 2',
      fontFamily: 'Inter',
      color: Palette.darkGray,
    ),
  ),
  button(
    TextStyle(
      fontSize: 11,
      height: 1.2,
      debugLabel: 'Button',
      fontFamily: 'Inter',
      color: Palette.darkGray,
    ),
  ),
  caption(
    TextStyle(
      fontSize: 9,
      height: 1.2,
      debugLabel: 'Caption',
      fontFamily: 'Inter',
      color: Palette.darkGray,
    ),
  );

  const CustomTextStyle(this.style);
  final TextStyle style;

  TextStyle get bold => style.copyWith(fontWeight: FontWeight.bold);
  TextStyle get italic => style.copyWith(fontStyle: FontStyle.italic);
  TextStyle get w500 => style.copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => style.copyWith(fontWeight: FontWeight.w600);
}

extension TextStylesExtension on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle changeColor({required Color color}) => copyWith(color: color);
  TextStyle changeSize(double size) => copyWith(fontSize: size);
}
