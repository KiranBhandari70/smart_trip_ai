import 'package:flutter/material.dart';
import '../../core/constants/asset_paths.dart';

class AppLogo extends StatelessWidget {
  final double width;

  const AppLogo({
    super.key,
    this.width = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetPaths.logo,
      width: width,
    );
  }
}