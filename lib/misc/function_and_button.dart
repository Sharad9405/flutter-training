import 'package:flutter/material.dart';

class FunctionsAndButton extends StatefulWidget {
  const FunctionsAndButton({Key? key}) : super(key: key);

  @override
  State<FunctionsAndButton> createState() => _FunctionsAndButtonState();
}

class _FunctionsAndButtonState extends State<FunctionsAndButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        '2. Visible-Invisible Widget',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );
  }
}
