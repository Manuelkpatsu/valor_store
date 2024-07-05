import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';

import 'circular_container.dart';
import 'curved_edges_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  final Widget child;

  const PrimaryHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: AppColors.primary,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                backgroundColor: AppColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                backgroundColor: AppColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
