import 'package:flutter/material.dart';
import '../common/my_colors.dart';

class ButtonsIn extends StatelessWidget {
  const ButtonsIn(
      {Key? key, required this.color, required this.centerText, this.onTap})
      : super(key: key);

  final Color color;
  final Widget centerText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: onTap,
      child: centerText,
    );
  }
}
