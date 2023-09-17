import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FlutterAnimation2 extends StatefulWidget {
  const FlutterAnimation2({Key? key}) : super(key: key);

  @override
  State<FlutterAnimation2> createState() => _FlutterAnimationState();
}

class _FlutterAnimationState extends State<FlutterAnimation2> with SingleTickerProviderStateMixin{
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true,);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Animation 2',
      child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return Container(
            // height: 10,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [Colors.purple, Colors.pink, Colors.yellow],
                stops: [0, _controller.value, 1],
              ),
              borderRadius: BorderRadius.circular(0),
              // border: Border.all(color: Colors.white),
            ),
          );
        },
      ),
    );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
