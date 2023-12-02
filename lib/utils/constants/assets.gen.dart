/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/main_screen_image.png
  AssetGenImage get mainScreenImage => const AssetGenImage('assets/images/main_screen_image.png');

  /// File path: assets/images/man_person.png
  AssetGenImage get manPerson => const AssetGenImage('assets/images/man_person.png');

  /// File path: assets/images/no_resume.png
  AssetGenImage get noResume => const AssetGenImage('assets/images/no_resume.png');

  /// List of all assets
  List<AssetGenImage> get values => [mainScreenImage, manPerson, noResume];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow-right.svg
  String get arrowRight => 'assets/svg/arrow-right.svg';

  /// File path: assets/svg/favorite-selected.svg
  String get favoriteSelected => 'assets/svg/favorite-selected.svg';

  /// File path: assets/svg/favorite.svg
  String get favorite => 'assets/svg/favorite.svg';

  /// File path: assets/svg/home-selected.svg
  String get homeSelected => 'assets/svg/home-selected.svg';

  /// File path: assets/svg/home.svg
  String get home => 'assets/svg/home.svg';

  /// File path: assets/svg/no_resume.svg
  String get noResume => 'assets/svg/no_resume.svg';

  /// File path: assets/svg/person-selected.svg
  String get personSelected => 'assets/svg/person-selected.svg';

  /// File path: assets/svg/person.svg
  String get person => 'assets/svg/person.svg';

  /// File path: assets/svg/plus.svg
  String get plus => 'assets/svg/plus.svg';

  /// File path: assets/svg/settings-selected.svg
  String get settingsSelected => 'assets/svg/settings-selected.svg';

  /// File path: assets/svg/settings.svg
  String get settings => 'assets/svg/settings.svg';

  /// File path: assets/svg/todo.svg
  String get todo => 'assets/svg/todo.svg';

  /// List of all assets
  List<String> get values => [
        arrowRight,
        favoriteSelected,
        favorite,
        homeSelected,
        home,
        noResume,
        personSelected,
        person,
        plus,
        settingsSelected,
        settings,
        todo
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
