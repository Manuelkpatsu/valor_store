import 'package:flutter/material.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/device/device_utility.dart';

class RatingProgressIndicator extends StatelessWidget {
  final int ratingScore;
  final double ratingValue;

  const RatingProgressIndicator({super.key, required this.ratingScore, required this.ratingValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            ratingScore.toString(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: DeviceUtils.getScreenWidth() * 0.5,
            child: LinearProgressIndicator(
              value: ratingValue,
              minHeight: 11,
              backgroundColor: AppColors.grey,
              valueColor: const AlwaysStoppedAnimation(AppColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
      ],
    );
  }
}
