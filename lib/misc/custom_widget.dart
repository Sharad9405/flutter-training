import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CustomWidgetExample extends StatelessWidget {
  const CustomWidgetExample(
      {Key? key, this.img,
      required this.title,
       this.subTitle,
       this.onPlayTap,
       this.onPauseTap,
       this.onStopTap})
      : super(key: key);

  final IconData? img;
  final String title;
  final String? subTitle;
  final Function(String title)? onPlayTap;
  final Function? onPauseTap;
  final Function? onStopTap;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Custom Widget',
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.blueAccent,
          elevation: 10,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    img ?? Icons.album,
                    size: 60,
                  ),
                  title: Text(
                    title ?? 'Mohammad Rafi',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  subtitle: Text(
                    'Best of Mohammad Rafi songs',
                    style: TextStyle(fontSize: 18, color: Colors.white60),
                  ),
                ),
                ButtonBar(
                  children: [
                    ElevatedButton(
                      child: const Text('Play'),
                      onPressed: () => onPlayTap?.call(title),
                    ),
                    ElevatedButton(
                      child: const Text('Pause'),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: const Text('Stop'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
