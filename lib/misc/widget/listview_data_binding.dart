import 'package:chetu_training/misc/models/students.dart';
import 'package:chetu_training/misc/student_cell.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DynamicListview extends StatefulWidget {
  const DynamicListview({Key? key}) : super(key: key);

  @override
  State<DynamicListview> createState() => _ListviewExampleState();
}

class _ListviewExampleState extends State<DynamicListview> {
  List<Student> mList = <Student>[];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _generateStudentData();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Dynamic Listview',
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        // color: Colors.yellowAccent.shade100,
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : mList.isNotEmpty
              ? ListView.separated(
                itemCount: mList.length,
                itemBuilder: (context, index) {
                  return StudentCell(data: mList[index], onTap: (data ) {
                    // final nList = mList;
                    for (var element in mList) {
                      if(data.id ==  element.id){
                        element.selected = !element.selected;
                      }else{
                        element.selected = false;
                      }
                    }
                  },);
                },
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.grey,
                ),
              )
              : const Center(child: Text('Np data found'),),
      ),
    );
  }

  void _generateStudentData() {
    final list = <Student>[];

    list.add(Student(
      id: 1,
      name: 'Sunny',
      selected: false,
    ));
    list.add(Student(
      id: 2,
      name: 'Vishwa',
      selected: false,
    ));
    list.add(Student(
      id: 3,
      name: 'Mohit',
      selected: false,
    ));
    list.add(Student(
      id: 4,
      name: 'Rohit',
      selected: false,
    ));
    list.add(Student(
      id: 5,
      name: 'Shrikant',
      selected: false,
    ));
    list.add(Student(
      id: 6,
      name: 'Rajiv',
      selected: false,
    ));

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
        mList = list;
      });
    });

    print('');
    debugPrint('');
  }
}



