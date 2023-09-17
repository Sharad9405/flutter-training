import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class WidgetLifecycle extends StatelessWidget {
  const WidgetLifecycle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(title: 'Widget Lifecycle',
      // child: Stateless(color: Colors.lightGreenAccent,),
      child: Stateful(),
    );
  }
}


class Stateless extends StatelessWidget {
  const Stateless({Key? key, this.color = Colors.orange}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

class Stateful extends StatefulWidget {
  const Stateful({Key? key}) : super(key: key);

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  late Color color;


  @override
  void initState() {
    debugPrint('initState');
    color = Colors.purpleAccent;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return Container(
      color: color,
      child: InkWell(
        onTap: (){

        },
      ),
    );
  }
}

