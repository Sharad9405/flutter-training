import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class StatefulWidgetExample extends StatefulWidget {
  const StatefulWidgetExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatefulWidgetState();
}

class _StatefulWidgetState extends State<StatefulWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'Stateful Widget', child: Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              padding: const EdgeInsets.all(0),
              alignment: Alignment.centerRight,
              icon:Icon(_isFavorited ? Icons.star : Icons.star_border,),
              color: Colors.red[500],
              onPressed: _toggleFavorite,
            ),
          ),
          SizedBox(
            width: 18,
            child: SizedBox(
              child: Text('$_favoriteCount'),
            ),
          ),
        ],
      ),
    ),);
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
