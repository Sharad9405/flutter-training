import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:chetu_training/misc/widget/reusable_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetLayout extends StatefulWidget {
  const WidgetLayout({Key? key}) : super(key: key);

  @override
  State<WidgetLayout> createState() => _WidgetLayoutState();
}


class _WidgetLayoutState extends State<WidgetLayout> {
  late int count;


  @override
  void initState() {
    super.initState();

    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build: called');
    return SafeArea(child: CustomAppBar(
      title: 'Widget Layout',
      child: Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 100),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // const Expanded(
            //   child: ReusableBox(
            //     color: Colors.white,
            //   ),
            // ),
            //
            const Expanded(
              child: ReusableBox(
                color: Colors.black,
                width: 150, height: 150,
              ),
            ),
            Expanded(
              child: Text(
                'count: $count',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),

            Center(child: CupertinoButton(
              onPressed: (){
                _updateCounter();
              },
              child: const Text(
                'Increment',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),)
          ],
        ),
      ),
    ));
  }

  void _updateCounter() {
    setState(() {
      count += 1;
    });
        debugPrint('count: $count');
  }
}
