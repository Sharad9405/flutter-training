import 'package:chetu_training/misc/models/students.dart';
import 'package:flutter/material.dart';

class StudentCell extends StatelessWidget {
  const StudentCell({Key? key, required this.data, required this.onTap}) : super(key: key);

  final Student data;
  final Function(Student) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: data.selected ? Colors.amber : Colors.transparent,
      child: ListTile(
          onTap: () {
            onTap.call(data);

              // final nList = mList;
              // for (var element in nList) {
              //   if(mList[index].id ==  element.id){
              //     element.selected = !element.selected;
              //   }else{
              //     element.selected = false;
              //   }
              // }
          },
          leading: Text(
            '${data.id}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          title: Text(
            '${data.name}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          trailing: InkWell(
              onTap: () {
                debugPrint('onTrailing click');
              },
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ))),
    );
  }
}
