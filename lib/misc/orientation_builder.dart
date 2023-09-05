import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrientationBuilderExample extends StatelessWidget {
  const OrientationBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: CustomAppBar(title: 'Orientation Builder Example',
      child: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(

            builder: (BuildContext context, BoxConstraints constraints) {
              return SizedBox(
                height: constraints.maxHeight,
                child: GridView.count(
                  crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                  children: List.generate(20, (index) {
                    return Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.displaySmall,
                    );
                  }),
                ),
              );
            },
          );
        },
      ),
      ),
    );
  }
}
