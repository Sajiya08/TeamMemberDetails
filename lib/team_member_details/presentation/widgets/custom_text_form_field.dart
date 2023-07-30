import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String label;
  double elevation;
  int? minLines;
  String? Function(String?)? validator;
  GestureTapCallback? onSuffixIconTap, onPrefixIconTap, onTap;
  FocusNode? focusNode;
  bool obscureText = false,
      showCursor = false,
      readOnly = false,
      autoFocus = false,
      isTapped = false;
  TextStyle? style;
  int? maxLength;
  Widget? widget;
  String? sufixIcon, prefixIcon;
  Color? inputTypeColor, textHintColor, outerBorderColor;
  final InputDecoration? decoration;

  CustomTextFormField(
      {Key? key,
      required this.controller,
      this.decoration,
      this.elevation = 2,
      required this.label,
      this.keyboardType,
      this.validator,
      this.inputTypeColor,
      this.outerBorderColor,
      this.textHintColor,
      this.onSuffixIconTap,
      this.onPrefixIconTap,
      this.onTap,
      this.widget,
      this.sufixIcon,
      this.prefixIcon,
      this.isTapped = false,
      this.focusNode,
      this.showCursor = true,
      this.obscureText = false,
      this.readOnly = false,
      this.autoFocus = true,
      this.style,
      this.maxLength,
      this.minLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(color: inputTypeColor ?? Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.black),
        ),
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      onChanged: (text) {},
    );
  }
}
