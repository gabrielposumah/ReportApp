import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import '../common/my_colors.dart';
import '../common/myTyphography.dart';

class MyTextFields extends StatelessWidget {
  const MyTextFields({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obsecureText = false,
  }) : super(key: key);

  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obsecureText ?? false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: MyTypography.textIn,
          fillColor: MyColors.green1.withOpacity(0.4),
          filled: true,
          prefixIcon: prefixIcon,
          // prefixIcon: Icon(
          //   FluentIcons.person_20_regular,
          //   color: Colors.black,
          // ),
          suffixIcon: suffixIcon,
          // suffixIcon: Icon(
          //   FluentIcons.eye_12_filled,
          //   color: Colors.black,
          // ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
        ));
  }
}
