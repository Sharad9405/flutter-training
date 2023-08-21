import 'package:chetu_training/misc/card_example.dart';
import 'package:chetu_training/misc/constants/enum/song_play_action_enum.dart';
import 'package:chetu_training/misc/song_card.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FunctionWithCallBack extends StatefulWidget {
  const FunctionWithCallBack({Key? key}) : super(key: key);

  @override
  State<FunctionWithCallBack> createState() => _FunctionWithCallBackState();
}

class _FunctionWithCallBackState extends State<FunctionWithCallBack> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Functions with Callback',
      child: Center(
        child: SongCard(
          onActionTap: (type){
            debugPrint('$type');
            if(type == SongPlayActionEnum.play){

            }else if(type == SongPlayActionEnum.pause){

            }
          },
        ),
      ),
    );
  }
}
