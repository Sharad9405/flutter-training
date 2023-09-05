import 'package:flutter/material.dart';


class AppTextField extends StatelessWidget {

  final TextEditingController controller;
  final TextAlign? textAlign;
  final Color? color;
  final double? size;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final InputDecoration? inputDecoration;
  final Widget? prefixIcon;
  final Widget? label;
  final String? hintText;
  final bool readOnly;
  final Widget? suffixIcon;
  final Function(dynamic)? validate;
  final Function(String)? onChanged;


  const AppTextField({super.key, required this.controller, this.textAlign, this.color, this.size,
    this.letterSpacing, this.fontWeight, this.inputDecoration, this.prefixIcon, this.label, this.hintText,
    this.readOnly = false, this.suffixIcon,
    this.validate, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      style: TextStyle(
        color: color,
        fontSize: size,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
      ),
      validator:(value) => validate?.call(value),
      decoration: inputDecoration ?? InputDecoration(
        prefix: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        errorBorder:  const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        suffixIcon: suffixIcon,
      ),
      onChanged: (value) => onChanged?.call(value),
    );
  }
}
