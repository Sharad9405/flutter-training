import 'package:chetu_training/misc/widget/app_text.dart';
import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key, this.uName, this.message, this.type}) : super(key: key);

  final String? uName;
  final String? message;
  final String? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: type == 'sender' ? CrossAxisAlignment.end :  CrossAxisAlignment.start,
        children: [
           AppText(
            title: '$uName',
            size: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          AppText(
            title: '$message',
            size: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.7),
          ),
        ],
      ),
    );
  }
}
