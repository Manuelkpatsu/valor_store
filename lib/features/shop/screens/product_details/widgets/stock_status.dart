import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/poducts/product_cards/widget/product_title_text.dart';
import 'package:valor_store/utils/constants/text_strings.dart';

class StockStatus extends StatelessWidget {
  final String status;
  final bool smallSize;

  const StockStatus({super.key, required this.status, this.smallSize = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductTitleText(title: TextStrings.stock, smallSize: smallSize),
        Text(status, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
