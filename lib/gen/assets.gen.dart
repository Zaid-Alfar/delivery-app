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

  /// File path: assets/images/Bread.png
  AssetGenImage get bread => const AssetGenImage('assets/images/Bread.png');

  /// File path: assets/images/Drinks.png
  AssetGenImage get drinks => const AssetGenImage('assets/images/Drinks.png');

  /// File path: assets/images/Fruits.png
  AssetGenImage get fruitsPng =>
      const AssetGenImage('assets/images/Fruits.png');

  /// File path: assets/images/Fruits.svg
  String get fruitsSvg => 'assets/images/Fruits.svg';

  /// File path: assets/images/Pasta.png
  AssetGenImage get pasta => const AssetGenImage('assets/images/Pasta.png');

  /// File path: assets/images/Sweets.png
  AssetGenImage get sweets => const AssetGenImage('assets/images/Sweets.png');

  /// File path: assets/images/Vegetables.png
  AssetGenImage get vegetablesPng =>
      const AssetGenImage('assets/images/Vegetables.png');

  /// File path: assets/images/Vegetables.svg
  String get vegetablesSvg => 'assets/images/Vegetables.svg';

  /// File path: assets/images/boston_lettuce.png
  AssetGenImage get bostonLettuce =>
      const AssetGenImage('assets/images/boston_lettuce.png');

  /// File path: assets/images/boston_lettuce_details.png
  AssetGenImage get bostonLettuceDetails =>
      const AssetGenImage('assets/images/boston_lettuce_details.png');

  /// File path: assets/images/cart.svg
  String get cart => 'assets/images/cart.svg';

  /// File path: assets/images/check.svg
  String get check => 'assets/images/check.svg';

  /// File path: assets/images/grid.svg
  String get grid => 'assets/images/grid.svg';

  /// File path: assets/images/heart.svg
  String get heart => 'assets/images/heart.svg';

  /// File path: assets/images/purple_cauliflower.png
  AssetGenImage get purpleCauliflower =>
      const AssetGenImage('assets/images/purple_cauliflower.png');

  /// File path: assets/images/savoy_cabbage.png
  AssetGenImage get savoyCabbage =>
      const AssetGenImage('assets/images/savoy_cabbage.png');

  /// File path: assets/images/shopping-cart.svg
  String get shoppingCart => 'assets/images/shopping-cart.svg';

  /// File path: assets/images/user.svg
  String get user => 'assets/images/user.svg';

  /// List of all assets
  List<dynamic> get values => [
        bread,
        drinks,
        fruitsPng,
        fruitsSvg,
        pasta,
        sweets,
        vegetablesPng,
        vegetablesSvg,
        bostonLettuce,
        bostonLettuceDetails,
        cart,
        check,
        grid,
        heart,
        purpleCauliflower,
        savoyCabbage,
        shoppingCart,
        user
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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
