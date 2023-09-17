import 'dart:io';

import 'package:chetu_training/misc/grid_items.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OrientationBuilderExample extends StatelessWidget {
  const OrientationBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(kIsWeb){

    }else if(Platform.isAndroid){

    }else if(Platform.isIOS){

    }
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: CustomAppBar(title: 'Orientation Builder Example',
        child: OrientationBuilder(
          builder: (context, orientation) {

            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: orientation == Orientation.portrait
                      ? _portraitView(context) : _horizontalView(context),
                  // child: Wrap(
                  //   // mainAxisAlignment: MainAxisAlignment.start,
                  //   // crossAxisAlignment: CrossAxisAlignment.center,
                  //   runSpacing: 10,
                  //   alignment: WrapAlignment.start,
                  //   children: [
                  //     // const SizedBox(width: 10,),
                  //     Container(
                  //       width: 100,
                  //       height: 100,
                  //       color: Colors.orange,
                  //     ),
                  //     const SizedBox(width: 10,),
                  //     Container(
                  //       width: 100,
                  //       height: 100,
                  //       color: Colors.blueAccent,
                  //     ),
                  //     const SizedBox(width: 10,),
                  //     Container(
                  //       width: 100,
                  //       height: 100,
                  //       color: Colors.red,
                  //     ),
                  //     const SizedBox(width: 10,),
                  //     Container(
                  //       width: 100,
                  //       height: 100,
                  //       color: Colors.purpleAccent,
                  //     ),
                  //     const SizedBox(width: 10,),
                  //     Container(
                  //       width: 100,
                  //       height: 100,
                  //       color: Colors.red,
                  //     ),
                  //     const SizedBox(width: 10,),
                  //     Container(
                  //       width: 100,
                  //       height: 100,
                  //       color: Colors.purpleAccent,
                  //     ),
                  //     const SizedBox(width: 10,),
                  //   ],
                  // ),

                );
              },
            );
          },
        ),
        ),
      ),
    );
  }


  Widget _portraitView(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
          child: GridItems()
        ),
        Container(
          height: MediaQuery.sizeOf(context).height * 0.2,
          color: Colors.orange,
        ),
      ],
    );
  }

  Widget _horizontalView(BuildContext context){
    return Row(
      children: [
        const Expanded(
            child: GridItems()
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.2,
          color: Colors.orange,
        ),
      ],
    );
  }
}
