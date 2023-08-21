import 'package:flutter/material.dart';

class ReusableBox extends StatelessWidget {
  const ReusableBox({Key? key, this.color = Colors.grey, this.width = 100, this.height = 100}) : super(key: key);

  final Color? color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
