import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/circular_container.dart';
import 'package:valor_store/utils/constants/colors.dart';
import 'package:valor_store/utils/helpers/helper_functions.dart';

class AppChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  const AppChoiceChip({super.key, required this.text, required this.selected, this.onSelected});

  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunctions.getColor(text) != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox.shrink() : Text(text),
        selected: selected,
        onSelected: (value) {},
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        labelPadding: isColor ? EdgeInsets.zero : null,
        padding: isColor ? EdgeInsets.zero : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? HelperFunctions.getColor(text)! : null,
        selectedColor: isColor ? HelperFunctions.getColor(text)! : null,
        avatar: isColor
            ? CircularContainer(
                width: 50,
                height: 50,
                backgroundColor: HelperFunctions.getColor(text)!,
              )
            : null,
      ),
    );
  }
}
