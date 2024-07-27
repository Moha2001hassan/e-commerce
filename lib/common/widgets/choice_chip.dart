import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/utils/helpers/my_helper_functions.dart';
import 'package:flutter/material.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip(
      {super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = MyHelperFunctions.getColor(text) != null;
    final color = MyHelperFunctions.getColor(text);
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar: isColor
          ? CircularContainer(width: 50, height: 50, backgroundColor: color!)
          : null,
      shape: isColor ? const CircleBorder() : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor ? color : null,
    );
  }
}
