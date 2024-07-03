import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  final int itemCount;
  final double? mainAxisExtent;
  final EdgeInsets? padding;
  final Widget? Function(BuildContext, int) itemBuilder;
  final bool shrinkWrap;
  final ScrollPhysics physics;

  const GridLayout({
    super.key,
    required this.itemCount,
    this.padding,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
    this.shrinkWrap = true,
    this.physics = const NeverScrollableScrollPhysics(),
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding,
      itemCount: itemCount,
      shrinkWrap: shrinkWrap,
      physics: physics,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSizes.gridViewSpacing,
        crossAxisSpacing: AppSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
