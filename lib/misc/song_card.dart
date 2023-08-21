import 'package:chetu_training/misc/constants/enum/song_play_action_enum.dart';
import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  const SongCard({Key? key,
       this.onActionTap }): super(key: key);

  final Function(SongPlayActionEnum)? onActionTap;


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.deepPurple,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.album,
              size: 60,
            ),
            title: Text(
              'Mohammad Rafi',
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
                onPressed: () => onActionTap?.call(SongPlayActionEnum.play),
              ),
              ElevatedButton(
                child: const Text('Pause'),
                onPressed: () => onActionTap?.call(SongPlayActionEnum.pause),
              ),
              ElevatedButton(
                child: const Text('Stop'),
                onPressed: () => onActionTap?.call(SongPlayActionEnum.stop),
              )
            ],
          )
        ],
      ),
    );
  }
}




