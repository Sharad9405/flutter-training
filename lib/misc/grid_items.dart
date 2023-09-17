import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  const GridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(20, (index) {
        return Text(
          'Item $index',
          style: Theme.of(context).textTheme.displaySmall,
        );
      }),
    );
  }
}
