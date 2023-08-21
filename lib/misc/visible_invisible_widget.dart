import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';


class VisibleInvisibleWidget extends StatelessWidget {
  const VisibleInvisibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool show = true;
    return CustomAppBar(title: 'Visible-Invisible Widget',
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Visibility(
            maintainSize: true, //to maintain space for where the widget would have been.
            maintainAnimation: true, //maintain animations within the [child] subtree when it is not [visible].
            maintainState: true, //maintain the [State] objects of the [child] subtree when it is not [visible].
            maintainInteractivity: false, //Whether to allow the widget to be interactive when hidden.
            child:  Text(
                'Flutter'
            ),
          ),
        ),

        if(show)
          Container(),

        (show) ? Container() : const SizedBox.shrink(),
      ],
    ),);
  }
}
