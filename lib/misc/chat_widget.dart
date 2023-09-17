import 'package:chetu_training/misc/login.dart';
import 'package:chetu_training/misc/message_view.dart';
import 'package:chetu_training/misc/widget/app_text.dart';
import 'package:chetu_training/misc/widget/app_text_field.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {

List<Message> list = [];
final TextEditingController controller = TextEditingController();

@override
  void initState() {

  list.add(Message(
    userName: 'Mohit',
    message: 'Hello Sunny',
    type: 'receiver'
  ));
  list.add(Message(
    userName: 'Sunny',
    message: 'Hello Mohit',
    type: 'sender'
  ));

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'Chat Widget',
    child: Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index){
                return MessageView(
                  key: UniqueKey(),
                  uName: list[index].userName,
                  message: list[index].message,
                  type: list[index].type,
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
            child: AppTextField(controller: controller,
            suffixIcon: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                  _sendMessage();
                },
                child: const AppText(
                  title: 'Send',
                ),
              ),
            ),
            onChanged: (value){

            },

            ),
          ),
        ],
      ),
    ),
    );
  }

  void _sendMessage() {
  if(controller.text.isEmpty){
    return;
  }
    list.add(Message(
        userName: 'Mohit',
        message: controller.text,
        type: 'sender'
    ));
  controller.text = '';
  setState(() {
  });
  }
}


class Message{
  final String? userName;
  final String? message;
  final String? type;

  Message({this.userName, this.message, this.type});

}
