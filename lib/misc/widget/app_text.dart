import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
      {Key? key,
      required this.title,
      this.textAlign,
       this.maxLine,
        this.color,
        this.letterSpacing,
       this.size = 12,
       this.fontStyle,
       this.fontWeight,
       this.font})
      : super(key: key);

  final String title;
  final TextAlign? textAlign;
  final int? maxLine;
  final Color? color;
  final double? letterSpacing;
  final double size;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final String? font;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLine,
      style: TextStyle(
        color: color ?? Colors.black,
        letterSpacing: letterSpacing,
        fontSize: size,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        fontFamily: font
      ),
    );
  }
}
