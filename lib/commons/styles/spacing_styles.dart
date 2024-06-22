import 'package:flutter/cupertino.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class SpacingStyles {
  SpacingStyles._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
  );
}
