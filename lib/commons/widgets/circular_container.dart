import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;
  final bool isCircular;
  final double radius;
  final bool showBorder;
  final Color borderColor;

  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding,
    this.margin,
    this.child,
    this.backgroundColor = AppColors.white,
    this.isCircular = true,
    this.radius = 400,
    this.showBorder = false,
    this.borderColor = AppColors.borderPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: isCircular ? null : BorderRadius.circular(radius),
        shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
