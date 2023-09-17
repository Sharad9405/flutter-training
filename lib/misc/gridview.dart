import 'dart:math';

import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class GridviewExample extends StatelessWidget {
  const GridviewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'Gridview Example',
      child: gridViewCustom(context),
    );
  }
}


Widget gridviewCount(BuildContext context){
  return GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,

    children: List.generate(100, (index) {
      return Container(
        color: getRandomColor(),
        child: Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      );
    }),
  );
}

Widget gridviewBuilder(BuildContext context){
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Number of columns
    ),
    itemCount: 100,
    itemBuilder: (context, index) => Container(
      color: getRandomColor(),
      child: Center(
        child: Text(
          'Item $index',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    ),
  );
}

Widget gridviewExtent(BuildContext context){
  return GridView.extent(
    maxCrossAxisExtent: 200,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,

    children: List.generate(100, (index) {
      return Container(
        color: getRandomColor(),
        child: Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      );
    }),
  );
}

Widget gridViewCustom(BuildContext context){
  return CustomScrollView(
    slivers: <Widget>[
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              color: getRandomColor(),
              child: Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            );
          },
          childCount: 50,
        ),
      ),
    ],
  );
}



Color getRandomColor() {
  // Create an instance of the Random class.
  final random = Random();
  // Generate random values for the red, green, and blue components of the color.
  final red = random.nextInt(256); // 0 to 255
  final green = random.nextInt(256); // 0 to 255
  final blue = random.nextInt(256); // 0 to 255
  // Create a Color object with the random values.
  final color = Color.fromARGB(255, red, green, blue);
  return color;
}
